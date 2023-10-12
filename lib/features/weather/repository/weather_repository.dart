import 'package:flutter_application/core/config/api_endpoints.dart';
import 'package:flutter_application/core/services/api_service.dart';
import 'package:flutter_application/core/services/location_service.dart';
import 'package:flutter_application/features/weather/models/weather_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class WeatherRepository {
  WeatherRepository(
    this._locationService,
    this._apiService,
  );

  final LocationService _locationService;
  final ApiService _apiService;

  Future<WeatherModel> fetchWeatherData() async {
    try {
      final position = await _locationService.getCurrentLocation();
      final response = await _apiService.dio.get(
        ApiEndpoints.currentWeather,
        queryParameters: {
          'q': '${position.latitude},${position.longitude}',
        },
      );

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
