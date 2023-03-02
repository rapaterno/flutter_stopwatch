import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/presentation/screen/stopwatch_screen.dart';
import 'package:flutter_stopwatch/res/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const StopWatchScreen(),
    );
  }
}
