part of 'counter_cubit.dart';

class CounterState extends Equatable {
  const CounterState({required this.counter});
  final int counter;
  @override
  List<Object> get props => [counter];

  factory CounterState.initial() {
    return const CounterState(counter: 0);
  }

  @override
  String toString() {
    return "CounterState ----> (counter: $counter)";
  }

  CounterState copyWith(int? count) {
    return CounterState(counter: count ?? counter);
  }
}
