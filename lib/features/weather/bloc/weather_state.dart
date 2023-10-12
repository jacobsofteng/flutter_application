part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
    @Default('') String city,
    @Default('') String country,
    @Default(0) double tempCelcius,
    @Default(0) double tempFahrenheit,
  }) = _WeatherState;
}

extension WeatherStateX on WeatherState {
  bool get isSuccess => status == StateStatus.success;
  bool get isLoading => status == StateStatus.loading;
  bool get isInitial => status == StateStatus.initial;
  bool get isError => status == StateStatus.error;
}
