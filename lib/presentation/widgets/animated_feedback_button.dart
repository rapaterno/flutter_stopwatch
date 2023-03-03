import 'package:flutter/material.dart';
import 'package:flutter_stopwatch/presentation/utils/color_utils.dart';
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

  final Duration animationDuration = const Duration(milliseconds: 150);
  final Cubic curve = Curves.easeOut;
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
          onTapDown: widget.onPressed != null ? (_) => _onTapDown() : null,
          onTapUp: widget.onPressed != null ? (_) => _onTapUp() : null,
          onTapCancel: widget.onPressed != null ? () => _onTapCancel() : null,
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
      duration: animationDuration,
      curve: curve,
      decoration: BoxDecoration(
          color: _pressed
              ? ColorUtils.darkenColor(widget.buttonColor)
              : widget.buttonColor,
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: buildButtonText(),
      ),
    );
  }

  Widget buildButtonText() {
    return AnimatedDefaultTextStyle(
      curve: curve,
      style: buildTextStyle(),
      duration: animationDuration,
      child: Text(
        widget.buttonText,
      ),
    );
  }

  TextStyle buildTextStyle() {
    return Theme.of(context).textTheme.button!.copyWith(
          color: widget.onPressed == null
              ? widget.disabledTextColor
              : widget.textColor,
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
