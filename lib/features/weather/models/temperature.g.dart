// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemperatureImpl _$$TemperatureImplFromJson(Map<String, dynamic> json) =>
    _$TemperatureImpl(
      tempCelcius: (json['temp_c'] as num).toDouble(),
      tempFahrenheit: (json['temp_f'] as num).toDouble(),
    );

Map<String, dynamic> _$$TemperatureImplToJson(_$TemperatureImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.tempCelcius,
      'temp_f': instance.tempFahrenheit,
    };
