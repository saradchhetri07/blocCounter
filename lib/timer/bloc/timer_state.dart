part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'InitialDuration: $duration';
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'Start Duration: $duration';
}

final class TimerInProgress extends TimerState {
  const TimerInProgress(super.duration);

  @override
  String toString() => 'Start Duration: $duration';
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
