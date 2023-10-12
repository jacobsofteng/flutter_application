import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocationService {
  Future<Position> getCurrentLocation() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw LocationServiceException('Location services are disabled.');
    }

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.deniedForever ||
        permission == LocationPermission.denied) {
      throw LocationServiceException(
          'Location permissions are denied (actual value: $permission).');
    }

    return await Geolocator.getCurrentPosition();
  }
}

class LocationServiceException implements Exception {
  final String message;
  LocationServiceException(this.message);

  @override
  String toString() => 'LocationServiceException: $message';
}
