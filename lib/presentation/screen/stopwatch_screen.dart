import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/domain/bloc/bloc.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => StopWatchBloc(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              buildElapsedTime(),
              Expanded(child: buildLapTimes()),
              buildControls()
            ],
          ),
        ),
      ),
    );
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
        child: BlocBuilder<StopWatchBloc, StopWatchState>(
          builder: (context, state) {
            return Text(
              formatElapsedTime(state.elapsedTime),
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontFeatures: [
                const FontFeature.tabularFigures(),
              ]),
            );
          },
        ),
      ),
    );
  }

  Widget buildLapTimes() {
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      buildWhen: (previous, current) {
        return previous.lapTimes != current.lapTimes;
      },
      builder: (context, state) {
        final lapTimes = state.lapTimes;
        final length = lapTimes.length;

        return ListView.builder(
            itemCount: length,
            itemBuilder: ((context, index) {
              final formattedLapTime =
                  formatElapsedTime(lapTimes[length - index - 1]);
              return ListTile(
                leading: Text('Lap ${(length - index).toString()}'),
                trailing: Text(formattedLapTime),
              );
            }));
      },
    );
  }

  Widget buildControls() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [buildLeftButton(), buildRightButton()]);
  }

  Widget buildLeftButton() {
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      builder: (context, state) {
        if (state is StopWatchRunning) {
          return TextButton(
              onPressed: () =>
                  context.read<StopWatchBloc>().add(const LapStopWatch()),
              child: Text('Lap'));
        } else if (state.lapTimes.isEmpty && state.elapsedTime == 0) {
          return TextButton(onPressed: null, child: Text('Lap'));
        } else {
          return TextButton(
              onPressed: () =>
                  context.read<StopWatchBloc>().add(const ResetStopWatch()),
              child: Text('Reset'));
        }
        // return TextButton(
        //     onPressed: (!_isRunning &&
        //             _lapTimes.isEmpty &&
        //             _stopwatch.elapsedMilliseconds == 0)
        //         ? null
        //         : _isRunning
        //             ? _lapTime
        //             : _resetTimer,
        //     child: Text(_isRunning ||
        //             (!_isRunning &&
        //                 _lapTimes.isEmpty &&
        //                 _stopwatch.elapsedMilliseconds == 0)
        //         ? 'Lap'
        //         : 'Reset'));
      },
    );
  }

  Widget buildRightButton() {
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      builder: (context, state) {
        Function()? onPressed;
        String text;
        if (state is StopWatchRunning) {
          onPressed =
              () => context.read<StopWatchBloc>().add(const StopStopWatch());
          text = 'Stop';
        } else {
          onPressed =
              () => context.read<StopWatchBloc>().add(const StartStopWatch());
          text = 'Start';
        }
        return TextButton(onPressed: onPressed, child: Text(text));
      },
    );
  }
}
