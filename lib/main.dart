import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/injector.dart';
import 'package:flutter_stopwatch/presentation/screen/stopwatch_screen.dart';
import 'package:flutter_stopwatch/res/theme_data.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stopwatch',
      theme: theme,
      home: const StopWatchScreen(),
    );
  }
}
