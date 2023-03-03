import 'dart:ui';

abstract class ColorUtils {
  static Color darkenColor(Color color) {
    const obscureLevel = 5;
    const darkenPercent = 1 - obscureLevel / 100;
    return Color.fromARGB(
      color.alpha,
      (color.red * darkenPercent).round(),
      (color.green * darkenPercent).round(),
      (color.blue * darkenPercent).round(),
    );
  }
}
