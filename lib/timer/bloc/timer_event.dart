part of 'timer_bloc.dart';

// sealed class TimerEvent {
//   const TimerEvent();
// }

// final class TimerStarted extends TimerEvent {
//   const TimerStarted({required this.duration});
//   final int duration;
// }

// final class TimerPaused extends TimerEvent {
//   const TimerPaused();
// }

// final class TimerResumed extends TimerEvent {
//   const TimerResumed();
// }

// class TimerReset extends TimerEvent {
//   const TimerReset();
// }

// class _TimerTicked extends TimerEvent {
//   const _TimerTicked({required this.duration});
//   final int duration;
// }

@freezed
class TimerEvent<T> with _$TimerEvent<T> {
  const factory TimerEvent.started(int duration) = TimerStarted;
  const factory TimerEvent.paused() = TimerPaused;
  const factory TimerEvent.resumed() = TimerResumed;
  const factory TimerEvent.reset() = TimerReset;
  const factory TimerEvent.ticked(int duration) = _TimerTicked;
}

//Run the build runner command to generate code