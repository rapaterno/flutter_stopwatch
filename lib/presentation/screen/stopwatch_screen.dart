import 'dart:async';

import 'package:flutter/material.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  Timer? _timer;
  bool _isRunning = false;
  Stopwatch _stopwatch = Stopwatch();

  List<String> _lapTimes = [];
  int _previousLapTime = 0;

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
      _previousLapTime = 0;
    });
  }

  void _lapTime() {
    setState(() {
      final elapsedTime = _stopwatch.elapsedMilliseconds;
      final formattedLapTime =
          formatElapsedTime(elapsedTime - _previousLapTime);
      _lapTimes.add(formattedLapTime);
      _previousLapTime = elapsedTime;
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
        child: Text(formatElapsedTime(_stopwatch.elapsedMilliseconds),
            style: Theme.of(context).textTheme.headline2),
      ),
    );
  }

  Widget buildLapTimes() {
    final length = _lapTimes.length;
    return ListView.builder(
        itemCount: length,
        itemBuilder: ((context, index) {
          return ListTile(
            leading: Text('Lap ${(length - index).toString()}'),
            trailing: Text(_lapTimes[length - index - 1]),
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
        onPressed: (!_isRunning && _lapTimes.isEmpty)
            ? null
            : _isRunning
                ? _lapTime
                : _resetTimer,
        child: Text(_isRunning || (!_isRunning && _lapTimes.isEmpty)
            ? 'Lap'
            : 'Reset'));
  }

  Widget buildRightButton() {
    return TextButton(
        onPressed: _isRunning ? _stopTimer : _startTimer,
        child: Text(_isRunning ? 'Stop' : 'Start'));
  }
}
