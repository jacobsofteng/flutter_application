import 'package:bloc/bloc.dart';
import 'package:flutter_application/features/weather/repository/weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/utils/enums/helper_enums.dart';

part 'weather_bloc.freezed.dart';
part 'weather_event.dart';
part 'weather_state.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherBloc(this._weatherRepository) : super(const WeatherState()) {
    on<_FetchWeather>(_onFetchWeather);
  }

  Future<void> _onFetchWeather(
      _FetchWeather event, Emitter<WeatherState> emit) async {
    try {
      emit(state.copyWith(status: StateStatus.loading));
      final weatherData = await _weatherRepository.fetchWeatherData();
      emit(
        state.copyWith(
          status: StateStatus.success,
          city: weatherData.location.name,
          country: weatherData.location.country,
          tempCelcius: weatherData.temperature.tempCelcius,
          tempFahrenheit: weatherData.temperature.tempFahrenheit,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: StateStatus.error,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
