import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/res/colors.dart';

TextStyle headline1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 48,
  color: DubColors.black,
);

TextStyle subtitle1 = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: DubColors.black,
);

TextStyle button = const TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color: DubColors.black,
);

ThemeData theme = ThemeData(
  brightness: Brightness.light,
  backgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(accentColor: DubColors.gray),
  fontFamily: 'SfProDisplay',
  textTheme: TextTheme(
    headline1: headline1,
    subtitle1: subtitle1,
    button: button,
  ),
);
