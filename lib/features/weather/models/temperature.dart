import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
abstract class Temperature with _$Temperature {
  const Temperature._();
  const factory Temperature({
    @JsonKey(name: 'temp_c') required double tempCelcius,
    @JsonKey(name: 'temp_f') required double tempFahrenheit,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
