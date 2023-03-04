import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/presentation/utils/format_utils.dart';
import 'package:flutter_stopwatch/res/colors.dart';

class StopwatchClock extends CustomPainter {
  final int elapsedTime; //in milliseconds
  final int previousLapTime; //in milliseconds
  const StopwatchClock(this.elapsedTime, this.previousLapTime);
  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = min(centerX, centerY);

    final minuteClockRadius = radius * (2 / 7);
    final minuteCenterY = centerY - (radius * (1 / 3));

    paintMinuteStopWatch(canvas, minuteClockRadius, centerX, minuteCenterY);
    paintElapsedTime(canvas, centerX, centerY);
    paintSecondsStopWatch(canvas, radius, centerX, centerY);
  }

  void paintSecondsStopWatch(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    paintTicks(
        canvas: canvas,
        radius: radius,
        centerX: centerX,
        centerY: centerY,
        strokeWidth: 1.3,
        count: 240,
        longTickFrequency: 4,
        longTickLength: 12,
        shortTickLength: 8,
        solidTickFrequency: 20);
    paintNumbers(
      canvas: canvas,
      centerX: centerX,
      centerY: centerY,
      radius: radius,
      fontSize: 21,
      count: 12,
      padding: 28,
    );

    paintLapTimeHand(canvas, radius, centerX, centerY);
    paintSecondTimeHand(canvas, radius, centerX, centerY);
  }

  void paintLapTimeHand(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    if (previousLapTime != 0) {
      final lapTime = elapsedTime - previousLapTime;

      final seconds = (lapTime / 6000) % 60;
      final secondsAngle = ((seconds) * (pi / 5)) - (pi / 2);

      paintTimeHand(
        canvas: canvas,
        radius: radius,
        centerX: centerX,
        centerY: centerY,
        handColor: DubColors.blue,
        strokeWidth: 2.0,
        handLength: radius,
        lengthOffset: 30,
        angle: secondsAngle,
        hasWhiteCenter: true,
      );
    }
  }

  void paintSecondTimeHand(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    final seconds = (elapsedTime / 6000) % 60;
    final secondsAngle = ((seconds) * (pi / 5)) - (pi / 2);

    paintTimeHand(
      canvas: canvas,
      radius: radius,
      centerX: centerX,
      centerY: centerY,
      handColor: DubColors.red,
      strokeWidth: 2.0,
      handLength: radius,
      lengthOffset: 30,
      angle: secondsAngle,
      hasWhiteCenter: true,
    );
  }

  void paintMinuteStopWatch(
    Canvas canvas,
    double radius,
    double centerX,
    double centerY,
  ) {
    paintTicks(
        canvas: canvas,
        radius: radius,
        centerX: centerX,
        centerY: centerY,
        strokeWidth: 0.8,
        count: 60,
        angleOffset: (pi / 6),
        longTickFrequency: 2,
        longTickLength: 8,
        shortTickLength: 6,
        solidTickFrequency: 10);

    paintNumbers(
      canvas: canvas,
      centerX: centerX,
      centerY: centerY,
      radius: radius,
      fontSize: 11,
      count: 6,
      padding: 18,
    );
    final minutes = (elapsedTime / 60000) % 30;
    final minutesAngle = ((minutes) * (pi / 15)) - (pi / 2);

    paintTimeHand(
        canvas: canvas,
        radius: radius,
        centerX: centerX,
        centerY: centerY,
        handColor: DubColors.yellow,
        strokeWidth: 2.0,
        handLength: radius,
        lengthOffset: 30,
        angle: minutesAngle);
  }

  void paintTimeHand({
    required Canvas canvas,
    required double radius,
    required double centerX,
    required double centerY,
    required Color handColor,
    required double strokeWidth,
    required double handLength,
    required double angle,
    double lengthOffset = 0,
    bool hasWhiteCenter = false,
  }) {
    final handPaint = Paint()
      ..color = handColor
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final hourHandX = centerX + handLength * cos(angle);
    final hourHandY = centerY + handLength * sin(angle);

    final centerHandX =
        hasWhiteCenter ? centerX - lengthOffset * cos(angle) : centerX;
    final centerHandY =
        hasWhiteCenter ? centerY - lengthOffset * sin(angle) : centerY;

    canvas.drawLine(Offset(centerHandX, centerHandY),
        Offset(hourHandX, hourHandY), handPaint);

    final centerDotPaint = Paint()
      ..strokeWidth = strokeWidth
      ..style = hasWhiteCenter ? PaintingStyle.stroke : PaintingStyle.fill
      ..color = handColor;

    canvas.drawCircle(Offset(centerX, centerY), 3, centerDotPaint);

    if (hasWhiteCenter) {
      final centerDotFillPaint = Paint()
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.fill
        ..color = Colors.white;

      canvas.drawCircle(Offset(centerX, centerY), 3, centerDotFillPaint);
    }
  }

  /// [longTickFrequency] A tick is long every x ticks,
  /// every other tick will be short
  /// [solidTickFrequency] A tick is solid every x ticks,
  /// every other tick will be opaque
  void paintTicks({
    required Canvas canvas,
    required double radius,
    required double centerX,
    required double centerY,
    required double strokeWidth,
    required int count,
    double angleOffset = 0,
    required int longTickFrequency,
    required int longTickLength,
    required int shortTickLength,
    required int solidTickFrequency,
  }) {
    final tickMarkPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final opaqueTickMarkPaint = Paint()
      ..color = Colors.black.withAlpha(50)
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    for (var i = 0; i < count; i++) {
      final angle = (i * pi / (count / 2)) - angleOffset;
      final tickMarkLength =
          i % longTickFrequency == 0 ? longTickLength : shortTickLength;
      final x1 = centerX + (radius - tickMarkLength) * cos(angle);
      final y1 = centerY + (radius - tickMarkLength) * sin(angle);
      final x2 = centerX + radius * cos(angle);
      final y2 = centerY + radius * sin(angle);
      final paint =
          i % solidTickFrequency == 0 ? tickMarkPaint : opaqueTickMarkPaint;

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
        FontFeature.tabularFigures(),
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

  void paintNumbers({
    required Canvas canvas,
    required double centerX,
    required double centerY,
    required double radius,
    required double fontSize,
    required int count,
    required double padding,
  }) {
    final textStyle = TextStyle(
      color: Colors.black,
      fontSize: fontSize,
    );

    for (var i = 1; i <= count; i++) {
      final angle = (i * pi / (count / 2)) - (pi / 2);
      final textSpan = TextSpan(
        text: (i * 5).toString(),
        style: textStyle,
      );
      final textPainter = TextPainter(
        text: textSpan,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout();
      final textCenterX =
          centerX + (radius - padding) * cos(angle) - textPainter.width / 2;
      final textCenterY =
          centerY + (radius - padding) * sin(angle) - textPainter.height / 2;

      textPainter.paint(canvas, Offset(textCenterX, textCenterY));
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
