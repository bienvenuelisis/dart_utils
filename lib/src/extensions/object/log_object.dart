import 'dart:developer' as devtools show log;

/// Colorful Logs in Flutter
extension Log on Object? {
  /// Log object even if it is null with color.
  void log() =>
      devtools.log(this?.toString() ?? '\x1b[101m\x1b[30mNULL\x1b[0m');
}
