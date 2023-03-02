import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_stopwatch/domain/bloc/bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Stop Watch Bloc', () {
    test('initial state is StopWatchInitial', () {
      expect(StopWatchBloc().state, const StopWatchInitial());
    });

    blocTest(
      'start stopwatch',
      build: () => StopWatchBloc(),
      act: (bloc) => bloc.add(const StartStopWatch()),
      expect: () => [isA<StopWatchRunning>()],
    );

    blocTest(
      'tick stopwatch for 30 milliseconds',
      build: () => StopWatchBloc(),
      act: (bloc) => bloc.add(const StartStopWatch()),
      wait: const Duration(milliseconds: 30),
      expect: () => [
        isA<StopWatchRunning>(),
        isA<StopWatchRunning>(),
        isA<StopWatchRunning>(),
        isA<StopWatchRunning>(),
      ],
    );

    blocTest(
      'stop stopwatch',
      build: () => StopWatchBloc(),
      act: (bloc) {
        bloc.add(const StartStopWatch());
        bloc.add(const StopStopWatch());
      },
      expect: () => [
        isA<StopWatchRunning>(),
        isA<StopWatchStopped>(),
      ],
    );

    blocTest(
      'reset stopwatch',
      build: () => StopWatchBloc(),
      act: (bloc) {
        bloc.add(const StartStopWatch());
        bloc.add(const StopStopWatch());
        bloc.add(const ResetStopWatch());
      },
      expect: () => [
        isA<StopWatchRunning>(),
        isA<StopWatchStopped>(),
        isA<StopWatchInitial>(),
      ],
    );

    blocTest(
      'ignore reset stopwatch while running',
      build: () => StopWatchBloc(),
      act: (bloc) {
        bloc.add(const StartStopWatch());
        bloc.add(const ResetStopWatch());
      },
      expect: () => [
        isA<StopWatchRunning>(),
      ],
    );

    /// Using test here instead of blocTest
    /// to check the length of lap time and
    /// previous lap time matches the last lap time
    ///
    /// the tests would be flaky due to the nature of
    /// [Stopwatch]
    test('lap stopwatch', () async {
      final bloc = StopWatchBloc();
      bloc.add(const StartStopWatch());
      bloc.add(const LapStopWatch());

      //Future.delayed is for the lap to register on the state
      await Future.delayed(const Duration());
      expect(bloc.state.lapTimes.length, equals(1));
      expect(bloc.state.previousLapTime, equals(bloc.state.lapTimes.last));
    });

    blocTest(
      'ignore lap stopwatch while stopped',
      build: () => StopWatchBloc(),
      act: (bloc) {
        bloc.add(const LapStopWatch());
      },
      expect: () => [],
    );
  });
}
