import 'stopwatch_localization.dart';

/// The translations for English (`en`).
class StopWatchLocalizationsEn extends StopWatchLocalizations {
  StopWatchLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get lap => 'Lap';

  @override
  String get start => 'Start';

  @override
  String get stop => 'Stop';

  @override
  String get reset => 'Reset';

  @override
  String lapNumber(int lapNumber) {
    return 'Lap $lapNumber';
  }
}
