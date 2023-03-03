import 'dart:ui';

import 'package:flutter_stopwatch/presentation/utils/color_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Color Utils', () {
    group('darkenColor', () {
      Map<Color, Color> expectedColorMap = {
        const Color(0xffc62424): const Color(0xffbc2222),
        const Color.fromARGB(255, 22, 29, 220): const Color(0xff151cd1),
        const Color.fromARGB(255, 0, 0, 0): const Color(0xff000000),
        const Color.fromARGB(255, 255, 255, 255): const Color(0xfff2f2f2),
        const Color.fromARGB(255, 14, 213, 87): const Color(0xff0dca53)
      };

      for (Color color in expectedColorMap.keys) {
        test('$color is darkened to ${expectedColorMap[color]}', () {
          final darkerColor = ColorUtils.darkenColor(color);
          expect(expectedColorMap[color], darkerColor);
        });
      }
    });
  });
}
