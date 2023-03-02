import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/domain/bloc/bloc.dart';
import 'package:flutter_stopwatch/injector.dart';
import 'package:flutter_stopwatch/presentation/widgets/animated_feedback_button.dart';
import 'package:flutter_stopwatch/res/colors.dart';
import 'package:flutter_stopwatch/res/sizes.dart';

import '../utils/format_utils.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: getIt<StopWatchBloc>(),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 50),
              buildElapsedTime(),
              Expanded(child: buildLapTimes()),
              const Divider(),
              const SizedBox(height: 30),
              buildControls()
            ],
          ),
        ),
      ),
    );
  }

  Widget buildElapsedTime() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 50,
        horizontal: DubSizes.horizontalMargin,
      ),
      height: 200,
      decoration: BoxDecoration(
          color: DubColors.lightGray, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Center(
          child: BlocBuilder<StopWatchBloc, StopWatchState>(
            builder: (context, state) {
              return Text(
                FormatUtils.formatElapsedTime(state.elapsedTime),
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

        return ListView.separated(
            shrinkWrap: true,
            itemCount: length,
            padding: EdgeInsets.zero,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: ((context, index) {
              final formattedLapTime =
                  FormatUtils.formatElapsedTime(lapTimes[length - index - 1]);
              return ListTile(
                leading: Text(
                  'Lap ${(length - index).toString()}',
                  style: Theme.of(context).textTheme.subtitle1!,
                ),
                trailing: Text(
                  formattedLapTime,
                  style: Theme.of(context).textTheme.subtitle1!,
                ),
              );
            }));
      },
    );
  }

  Widget buildControls() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: DubSizes.horizontalMargin,
        vertical: DubSizes.verticalMargin,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        buildLeftButton(),
        buildRightButton(),
      ]),
    );
  }

  Widget buildLeftButton() {
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      builder: (context, state) {
        Function()? onPressed;
        String text;

        if (state is StopWatchRunning) {
          onPressed = () => getIt<StopWatchBloc>().add(const LapStopWatch());
          text = 'Lap';
        } else if (state.lapTimes.isEmpty && state.elapsedTime == 0) {
          text = 'Lap';
        } else {
          onPressed = () => getIt<StopWatchBloc>().add(const ResetStopWatch());
          text = 'Reset';
        }

        return AnimatedFeedbackButton(
          onPressed: onPressed,
          buttonText: text,
          buttonColor: DubColors.lightGray,
          textColor: DubColors.black,
        );
      },
    );
  }

  Widget buildRightButton() {
    return BlocBuilder<StopWatchBloc, StopWatchState>(
      builder: (context, state) {
        Function()? onPressed;
        String text;
        Color buttonColor;
        Color textColor;
        if (state is StopWatchRunning) {
          onPressed = () => getIt<StopWatchBloc>().add(const StopStopWatch());
          text = 'Stop';
          buttonColor = DubColors.lightRed;
          textColor = DubColors.red;
        } else {
          onPressed = () => getIt<StopWatchBloc>().add(const StartStopWatch());
          text = 'Start';
          buttonColor = DubColors.lightGreen;
          textColor = DubColors.green;
        }

        return AnimatedFeedbackButton(
          onPressed: onPressed,
          buttonText: text,
          buttonColor: buttonColor,
          textColor: textColor,
        );
      },
    );
  }
}
