import 'package:flutter/widgets.dart';
import 'package:flutter_stopwatch/res/keys.dart';
import 'package:flutter_test/flutter_test.dart';

class StopWatchScreenTester {
  final WidgetTester tester;

  StopWatchScreenTester(this.tester);

  static Finder findKey(String key) => find.byKey(Key(key));
  final _screenFinder = findKey(StopWatchKeys.stopWatchScreen);
  final _stopButtonFinder = findKey(StopWatchKeys.stopButton);
  final _lapButtonFinder = findKey(StopWatchKeys.lapButton);
  final _startButtonFinder = findKey(StopWatchKeys.startButton);
  final _resetButtonFinder = findKey(StopWatchKeys.resetButton);

  final _lapTileFinder = findKey(StopWatchKeys.lapTile);

  Finder _elapsedTimeFinder(int milliseconds) =>
      findKey(StopWatchKeys.elapsedTime(milliseconds));

  Future<void> stop() async {
    await tester.tap(_stopButtonFinder);
  }

  Future<void> start() async {
    await tester.tap(_startButtonFinder);
  }

  Future<void> lap() async {
    await tester.tap(_lapButtonFinder);
  }

  Future<void> reset() async {
    await tester.tap(_resetButtonFinder);
  }

  Future<void> expectScreen() async {
    await tester.pumpAndSettle();
    expect(_screenFinder, findsOneWidget);
  }

  Future<void> checkLeftButtonBehavior() async {
    expect(_lapButtonFinder, findsOneWidget);
    expect(_resetButtonFinder, findsNothing);

    await start();

    await tester.pumpAndSettle();

    expect(_lapButtonFinder, findsOneWidget);
    expect(_resetButtonFinder, findsNothing);

    await stop();
    await tester.pumpAndSettle();

    expect(_lapButtonFinder, findsNothing);
    expect(_resetButtonFinder, findsOneWidget);

    await reset();
    await tester.pumpAndSettle();

    expect(_lapButtonFinder, findsOneWidget);
    expect(_resetButtonFinder, findsNothing);
  }

  void expectElapsedTime(int elapsedTime) {
    expect(_elapsedTimeFinder(elapsedTime), findsAtLeastNWidgets(1));
  }

  void expectElapsedTimeStarted() {
    expect(find.text('00:00.00'), findsNothing);
  }

  void expectNumOfLaps(int numOfLaps) {
    expect(_lapTileFinder, findsNWidgets(numOfLaps));
  }
}
