import 'package:flutter_stopwatch/presentation/utils/format_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Format Utils', () {
    void testMillisecondsToFormat(int milliseconds, String expected) {
      test('$milliseconds is formatted to $expected', () {
        final formattedElapsedTime =
            FormatUtils.formatElapsedTime(milliseconds);

        expect(expected, formattedElapsedTime);
      });
    }

    Map<int, String> millisecondsToStringMap = {
      0: '00:00.00',
      10: '00:00.01',
      1000: '00:01.00',
      60000: '01:00.00',
      209347: '03:29.34',
      9189323: '33:09.32'
    };

    for (int milliseconds in millisecondsToStringMap.keys) {
      testMillisecondsToFormat(
          milliseconds, millisecondsToStringMap[milliseconds]!);
    }
  });
}
