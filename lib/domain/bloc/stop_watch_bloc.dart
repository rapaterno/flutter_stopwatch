import 'dart:async';

import 'package:bloc/bloc.dart';

import 'events/stop_watch_event.dart';
import 'states/stop_watch_state.dart';

class StopWatchBloc extends Bloc<StopWatchEvent, StopWatchState> {
  final Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;

  StopWatchBloc() : super(const StopWatchInitial()) {
    on<StartStopWatch>(_onStarted);
    on<StopStopWatch>(_onStopped);
    on<ResetStopWatch>(_onReset);
    on<LapStopWatch>(_onLapped);
    on<TickStopWatch>(_onTicked);
  }

  void _onStarted(StartStopWatch event, Emitter<StopWatchState> emit) {
    emit(StopWatchRunning(
        state.elapsedTime, state.lapTimes, state.previousLapTime));
    _stopwatch.start();
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      add(const TickStopWatch());
    });
  }

  void _onStopped(StopStopWatch event, Emitter<StopWatchState> emit) {
    _timer?.cancel();
    _stopwatch.stop();
    emit(StopWatchStopped(
        state.elapsedTime, state.lapTimes, state.previousLapTime));
  }

  void _onReset(ResetStopWatch event, Emitter<StopWatchState> emit) {
    //Only allow reset if the stopwatch is stopped
    if (state is StopWatchStopped) {
      _stopwatch.reset();
      emit(const StopWatchInitial());
    }
  }

  void _onTicked(TickStopWatch event, Emitter<StopWatchState> emit) {
    if (state is StopWatchRunning) {
      emit(StopWatchRunning(_stopwatch.elapsedMilliseconds, state.lapTimes,
          state.previousLapTime));
    }
  }

  void _onLapped(LapStopWatch event, Emitter<StopWatchState> emit) {
    //Only allow lap if the stopwatch is running
    if (state is StopWatchRunning) {
      final elapsedTime = _stopwatch.elapsedMilliseconds;

      final latestLapTime = elapsedTime - state.previousLapTime;
      final lapTimes = state.lapTimes.toList();
      lapTimes.add(latestLapTime);

      emit(state.copyWith(lapTimes: lapTimes, previousLapTime: elapsedTime));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
