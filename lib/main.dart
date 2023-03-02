import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_stopwatch/injector.dart';
import 'package:flutter_stopwatch/l10n/generated/stopwatch_localization.dart';
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
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
      localizationsDelegates: const [
        StopWatchLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      title: 'Flutter Stopwatch',
      theme: theme,
      home: const StopWatchScreen(),
    );
  }
}
