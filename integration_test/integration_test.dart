import 'package:fake_async/fake_async.dart';
import 'package:flutter_stopwatch/res/keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_stopwatch/main.dart' as app;
import 'package:flutter_stopwatch/injector.dart';

import 'stopwatch_screen_tester.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Integration Test - Stopwatch Screen', () {
    tearDown(() {
      getIt.reset();
    });

    testWidgets('start, stop, reset buttons', (tester) async {
      app.main();

      final screenTester = StopWatchScreenTester(tester);
      await screenTester.expectScreen();
      screenTester.expectElapsedTime(0);
      await screenTester.start();

      await tester.pump(const Duration(seconds: 5));

      await screenTester.stop();

      screenTester.expectElapsedTimeStarted();
      await tester.pumpAndSettle();
      await screenTester.reset();
      await tester.pumpAndSettle();

      screenTester.expectElapsedTime(0);
    });
    testWidgets('check reset and lap button behavior', (tester) async {
      app.main();

      final screenTester = StopWatchScreenTester(tester);
      await screenTester.expectScreen();

      await screenTester.checkLeftButtonBehavior();
    });

    testWidgets('check elapsed time', (tester) async {
      app.main();

      final screenTester = StopWatchScreenTester(tester);
      await screenTester.expectScreen();
      screenTester.expectElapsedTime(0);

      await screenTester.start();

      fakeAsync((async) async {
        async.elapse(const Duration(seconds: 1, milliseconds: 10));

        screenTester.expectElapsedTime(6010);
      });
      await tester.pumpAndSettle();
      await screenTester.stop();
    });

    testWidgets('lap feature', (tester) async {
      app.main();

      final screenTester = StopWatchScreenTester(tester);
      await screenTester.expectScreen();
      screenTester.expectNumOfLaps(0);

      await screenTester.start();
      await tester.pump();

      await screenTester.lap();
      await tester.pump();
      screenTester.expectNumOfLaps(1);
      await tester.pump();

      await screenTester.lap();
      await tester.pumpAndSettle();
      screenTester.expectNumOfLaps(2);
    });
  });
}
