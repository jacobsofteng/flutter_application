import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';
import 'temperature.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();
  const factory WeatherModel({
    @JsonKey(name: 'location') required Location location,
    @JsonKey(name: 'current') required Temperature temperature,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
