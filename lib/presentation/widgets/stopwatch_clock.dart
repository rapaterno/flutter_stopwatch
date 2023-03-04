import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/presentation/utils/format_utils.dart';
import 'package:flutter_stopwatch/res/colors.dart';

class StopwatchClock extends CustomPainter {
  final int elapsedTime; //milliseconds
  const StopwatchClock(this.elapsedTime);
  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = min(centerX, centerY);

    paintMinuteStopWatch(
        canvas, radius * (2 / 7), centerX, centerY - (radius * (1 / 3)));
    paintElapsedTime(canvas, centerX, centerY);
    paintTicks(canvas, radius, centerX, centerY);
    paintSecondNumbers(canvas, radius, centerX, centerY);
    paintSecondsHand(canvas, radius, centerX, centerY);
  }

  void paintMinuteStopWatch(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    final tickMarkPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 0.8
      ..style = PaintingStyle.stroke;

    final opaqueTickMarkPaint = Paint()
      ..color = Colors.black.withAlpha(50)
      ..strokeWidth = 0.8
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < 60; i++) {
      final angle = (i - 5) * pi / 30;
      final tickMarkLength = i % 2 == 0 ? 8 : 6;
      final x1 = centerX + (radius - tickMarkLength) * cos(angle);
      final y1 = centerY + (radius - tickMarkLength) * sin(angle);
      final x2 = centerX + radius * cos(angle);
      final y2 = centerY + radius * sin(angle);
      final paint = i % 10 == 0 ? tickMarkPaint : opaqueTickMarkPaint;

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
    }

    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 11,
    );

    for (var i = 1; i <= 6; i++) {
      final angle = (i - 2) * pi / 3 + pi / 6;
      final textSpan = TextSpan(
        text: (i * 5).toString(),
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      const distanceFromCenter = 18;
      final textCenterX = centerX +
          (radius - distanceFromCenter) * (cos(angle)) -
          textPainter.width / 2;
      final textCenterY = centerY +
          (radius - distanceFromCenter) * sin(angle) -
          textPainter.height / 2;

      textPainter.paint(canvas, Offset(textCenterX, textCenterY));

      final minutes = (elapsedTime / 60000) % 30;
      final minutesAngle = ((minutes) * ((2 * pi) / 30)) - (pi / 2);
      final minutesHandLength = radius;

      const secondsHandColor = DubColors.red;

      const double strokeWidth = 2.0;

      final secondsHandPaint = Paint()
        ..color = secondsHandColor
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      final hourHandX = centerX + minutesHandLength * cos(minutesAngle);
      final hourHandY = centerY + minutesHandLength * sin(minutesAngle);
      canvas.drawLine(Offset(centerX, centerY), Offset(hourHandX, hourHandY),
          secondsHandPaint);

      final centerDotPaint = Paint()
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.fill
        ..color = DubColors.red;

      canvas.drawCircle(Offset(centerX, centerY), 3, centerDotPaint);
    }
  }

  void paintSecondsHand(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    final seconds = (elapsedTime / 6000) % 60;
    final secondsAngle = ((seconds) * pi / 6 - (pi / 2));
    final secondsHandLength = radius;

    const secondsHandColor = DubColors.red;

    const double strokeWidth = 2.0;

    final secondsHandPaint = Paint()
      ..color = secondsHandColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final hourHandX = centerX + secondsHandLength * cos(secondsAngle);
    final hourHandY = centerY + secondsHandLength * sin(secondsAngle);
    final centerHourHandX = centerX - 30 * cos(secondsAngle);
    final centerHourHandY = centerY - 30 * sin(secondsAngle);
    canvas.drawLine(Offset(centerHourHandX, centerHourHandY),
        Offset(hourHandX, hourHandY), secondsHandPaint);

    final centerDotPaint = Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..color = secondsHandColor;

    final centerDotFillPaint = Paint()
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.fill
      ..color = Colors.white;

    canvas.drawCircle(Offset(centerX, centerY), 3, centerDotFillPaint);
    canvas.drawCircle(Offset(centerX, centerY), 3, centerDotPaint);
  }

  void paintTicks(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    final tickMarkPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.3
      ..style = PaintingStyle.stroke;

    final opaqueTickMarkPaint = Paint()
      ..color = Colors.black.withAlpha(50)
      ..strokeWidth = 1.3
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < 240; i++) {
      final angle = i * pi / 120;
      final tickMarkLength = i % 4 == 0 ? 12 : 8;
      final x1 = centerX + (radius - tickMarkLength) * cos(angle);
      final y1 = centerY + (radius - tickMarkLength) * sin(angle);
      final x2 = centerX + radius * cos(angle);
      final y2 = centerY + radius * sin(angle);
      final paint = i % 20 == 0 ? tickMarkPaint : opaqueTickMarkPaint;

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
    }
  }

  void paintElapsedTime(
    Canvas canvas,
    double centerX,
    double centerY,
  ) {
    final textSpan = TextSpan(
      text: FormatUtils.formatElapsedTime(elapsedTime),
      style: const TextStyle(fontSize: 17, color: Colors.black, fontFeatures: [
        const FontFeature.tabularFigures(),
      ]),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();

    final textCenterX = centerX - textPainter.width / 2;
    final textCenterY = centerY + 50;

    textPainter.paint(canvas, Offset(textCenterX, textCenterY));
  }

  void paintSecondNumbers(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 21,
    );

    for (var i = 1; i <= 12; i++) {
      final angle = (i - 3) * pi / 6;
      final textSpan = TextSpan(
        text: (i * 5).toString(),
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      const distanceFromCenter = 28;
      final textCenterX = centerX +
          (radius - distanceFromCenter) * cos(angle) -
          textPainter.width / 2;
      final textCenterY = centerY +
          (radius - distanceFromCenter) * sin(angle) -
          textPainter.height / 2;

      textPainter.paint(canvas, Offset(textCenterX, textCenterY));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
