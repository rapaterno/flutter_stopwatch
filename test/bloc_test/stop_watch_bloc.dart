import 'package:bloc_test/bloc_test.dart';
import 'package:fake_async/fake_async.dart';
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

    test('lap stopwatch', () async {
      fakeAsync((async) {
        final bloc = StopWatchBloc();
        bloc.add(const StartStopWatch());

        async.elapse(const Duration(milliseconds: 100));
        bloc.add(const LapStopWatch());
        async.elapse(const Duration(milliseconds: 100));
        bloc.add(const LapStopWatch());
        async.elapse(const Duration(milliseconds: 100));

        expect(bloc.state.lapTimes, equals([100, 100]));
        expect(bloc.state.previousLapTime, equals(200));
      });
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
