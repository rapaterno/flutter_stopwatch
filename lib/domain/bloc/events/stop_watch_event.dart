import 'package:freezed_annotation/freezed_annotation.dart';

part 'stop_watch_event.freezed.dart';

@freezed
class StopWatchEvent with _$StopWatchEvent {
  const factory StopWatchEvent.start() = StartStopWatch;
  const factory StopWatchEvent.stop() = StopStopWatch;
  const factory StopWatchEvent.lap() = LapStopWatch;
  const factory StopWatchEvent.reset() = ResetStopWatch;
  const factory StopWatchEvent.tick() = TickStopWatch;
}
