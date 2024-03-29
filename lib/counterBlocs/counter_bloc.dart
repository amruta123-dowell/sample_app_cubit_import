import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<IncrementCounterEvent>((event, emit) {
      emit(state.copyWith(count: state.counter + 1));
    });

    on<DecrementCounterEvent>(_decrementCountFunction);
  }

  FutureOr<void> _decrementCountFunction(
      DecrementCounterEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.counter - 1));
  }
}
