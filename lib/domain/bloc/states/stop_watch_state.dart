import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_watch_state.freezed.dart';

@freezed
class StopWatchState with _$StopWatchState {
  const factory StopWatchState.initial({
    @Default(0) int elapsedTime,
    @Default([]) List<int> lapTimes,
    @Default(0) int previousLapTime,
  }) = StopWatchInitial;
  const factory StopWatchState.stopped(
          int elapsedTime, List<int> lapTimes, int previousLapTime) =
      StopWatchStopped;
  const factory StopWatchState.running(
          int elapsedTime, List<int> lapTimes, int previousLapTime) =
      StopWatchRunning;
}
