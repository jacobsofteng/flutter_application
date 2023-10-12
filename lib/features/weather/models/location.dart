import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const Location._();
  const factory Location({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'region') required String region,
    @JsonKey(name: 'country') required String country,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
