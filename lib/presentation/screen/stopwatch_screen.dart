import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;
  bool _isRunning = false;
  final Stopwatch _stopwatch = Stopwatch();

  final List<int> _lapTimes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildElapsedTime(),
            Expanded(child: buildLapTimes()),
            buildControls()
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    setState(() {
      _isRunning = true;
      _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        setState(() {});
      });
      _stopwatch.start();
    });
  }

  void _stopTimer() {
    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _stopwatch.stop();
    });
  }

  void _resetTimer() {
    setState(() {
      _stopwatch.reset();
      _lapTimes.clear();
    });
  }

  void _lapTime() {
    setState(() {
      final elapsedTime = _stopwatch.elapsedMilliseconds;
      final previousTime = _lapTimes.isEmpty ? 0 : _lapTimes.last;
      final latestLapTime = elapsedTime - previousTime;
      _lapTimes.add(latestLapTime);
    });
  }

  String formatElapsedTime(int milliseconds) {
    int hundredths = (milliseconds / 10).truncate();
    int seconds = (hundredths / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minuteStr = (minutes % 60).toString().padLeft(2, '0');
    String secondStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredthsStr = (hundredths % 100).toString().padLeft(2, '0');

    return '$minuteStr:$secondStr.$hundredthsStr';
  }

  Widget buildElapsedTime() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Center(
        child: Text(
          formatElapsedTime(_stopwatch.elapsedMilliseconds),
          style: Theme.of(context).textTheme.headline1!.copyWith(fontFeatures: [
            const FontFeature.tabularFigures(),
          ]),
        ),
      ),
    );
  }

  Widget buildLapTimes() {
    final length = _lapTimes.length;
    return ListView.builder(
        itemCount: length,
        itemBuilder: ((context, index) {
          final formattedLapTime =
              formatElapsedTime(_lapTimes[length - index - 1]);
          return ListTile(
            leading: Text('Lap ${(length - index).toString()}'),
            trailing: Text(formattedLapTime),
          );
        }));
  }

  Widget buildControls() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildLeftButton(), buildRightButton()]);
  }

  Widget buildLeftButton() {
    return TextButton(
        onPressed: (!_isRunning &&
                _lapTimes.isEmpty &&
                _stopwatch.elapsedMilliseconds == 0)
            ? null
            : _isRunning
                ? _lapTime
                : _resetTimer,
        child: Text(_isRunning ||
                (!_isRunning &&
                    _lapTimes.isEmpty &&
                    _stopwatch.elapsedMilliseconds == 0)
            ? 'Lap'
            : 'Reset'));
  }

  Widget buildRightButton() {
    return TextButton(
        onPressed: _isRunning ? _stopTimer : _startTimer,
        child: Text(_isRunning ? 'Stop' : 'Start'));
  }
}
