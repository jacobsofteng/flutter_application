import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/utils/enums/helper_enums.dart';

part 'counter_bloc.freezed.dart';
part 'counter_event.dart';
part 'counter_state.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<_Increment>(_onIncrement);
    on<_Decrement>(_onDecrement);
    on<_CheckIsDarkTheme>(_onCheckIsDarkTheme);
  }

  int getOperationValue() => state.isDarkTheme ? 2 : 1;

  void _onIncrement(
    _Increment event,
    Emitter<CounterState> emit,
  ) {
    int newCounterValue = state.counter + getOperationValue();

    if (newCounterValue <= 10) {
      emit(state.copyWith(counter: state.counter + getOperationValue()));
    } else {
      emit(state.copyWith(counter: 10));
    }
  }

  void _onDecrement(
    _Decrement event,
    Emitter<CounterState> emit,
  ) {
    int newCounterValue = state.counter - getOperationValue();

    if (newCounterValue > 0) {
      emit(state.copyWith(counter: state.counter - getOperationValue()));
    } else {
      emit(state.copyWith(counter: 0));
    }
  }

  void _onCheckIsDarkTheme(
    _CheckIsDarkTheme event,
    Emitter<CounterState> emit,
  ) {
    emit(state.copyWith(isDarkTheme: event.isDark));
  }
}
