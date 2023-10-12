part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    @Default(StateStatus.initial) StateStatus status,
    @Default('') String errorMessage,
    @Default(0) int counter,
    @Default(false) isDarkTheme,
  }) = _CounterState;
}
