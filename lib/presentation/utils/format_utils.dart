abstract class FormatUtils {
  static String formatElapsedTime(int milliseconds) {
    int hundredths = (milliseconds / 10).truncate();
    int seconds = (hundredths / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minuteStr = (minutes % 60).toString().padLeft(2, '0');
    String secondStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredthsStr = (hundredths % 100).toString().padLeft(2, '0');

    return '$minuteStr:$secondStr.$hundredthsStr';
  }
}
