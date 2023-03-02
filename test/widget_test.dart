import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/presentation/widgets/animated_feedback_button.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AnimatedButton has proper text and color',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: AnimatedFeedbackButton(
            buttonText: 'Press',
            buttonColor: Colors.red,
          ),
        ),
      ),
    );

    final textFinder = find.text('Press');
    final colorFinder = find.byWidgetPredicate(((widget) =>
        widget is AnimatedContainer &&
        widget.decoration is BoxDecoration &&
        (widget.decoration as BoxDecoration).color == Colors.red));

    expect(colorFinder, findsOneWidget);
    expect(textFinder, findsOneWidget);
  });
  testWidgets('AnimatedButton has proper text and color',
      (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimatedFeedbackButton(
            buttonText: 'Tap',
            onPressed: () => pressed = true,
          ),
        ),
      ),
    );
    final buttonFinder = find.widgetWithText(AnimatedFeedbackButton, 'Tap');

    await tester.tap(buttonFinder);

    expect(pressed, true);
  });
}
