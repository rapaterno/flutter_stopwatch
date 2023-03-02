import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/res/colors.dart';

class AnimatedFeedbackButton extends StatefulWidget {
  const AnimatedFeedbackButton({
    super.key,
    this.onPressed,
    required this.buttonText,
    this.buttonColor = DubColors.lightGray,
    this.textColor = DubColors.black,
    this.disabledTextColor = DubColors.gray,
  });

  final VoidCallback? onPressed;
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final Color disabledTextColor;

  @override
  State<AnimatedFeedbackButton> createState() => _AnimatedFeedbackButtonState();
}

class _AnimatedFeedbackButtonState extends State<AnimatedFeedbackButton> {
  bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    double baseDimension = 90;
    double shrink = 3;
    double dimension = _pressed ? baseDimension - shrink : baseDimension;
    return SizedBox(
      height: baseDimension,
      width: baseDimension,
      child: Center(
        child: GestureDetector(
          onTapDown: (_) => _onTapDown(),
          onTapUp: (_) => _onTapUp(),
          onTapCancel: () => _onTapCancel(),
          onTap: widget.onPressed,
          child: buildAnimatedButton(dimension),
        ),
      ),
    );
  }

  Widget buildAnimatedButton(double dimension) {
    return AnimatedContainer(
      width: dimension,
      height: dimension,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      decoration: BoxDecoration(
          color:
              _pressed ? darkenColor(widget.buttonColor) : widget.buttonColor,
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: buildButtonText(),
      ),
    );
  }

  Text buildButtonText() {
    return Text(
      widget.buttonText,
      style: Theme.of(context).textTheme.button!.copyWith(
            color: widget.onPressed == null
                ? widget.disabledTextColor
                : widget.textColor,
          ),
    );
  }

  Color darkenColor(Color color) {
    const obscureLevel = 5;
    const darkenPercent = 1 - obscureLevel / 100;
    return Color.fromARGB(
      color.alpha,
      (color.red * darkenPercent).round(),
      (color.green * darkenPercent).round(),
      (color.blue * darkenPercent).round(),
    );
  }

  void _onTapDown() {
    setState(() {
      _pressed = true;
    });
  }

  void _onTapUp() {
    setState(() {
      _pressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _pressed = false;
    });
  }
}
