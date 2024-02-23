import 'package:collection/collection.dart';

/// Uniques functions on maps
extension Unique<K, V> on Map<K, V> {
  /// Return map without duplicates
  Map<K, V> unique() {
    final result = <K, V>{};
    for (final value in {...values}) {
      final firstKey = keys.firstWhereOrNull((key) => this[key] == value);
      if (firstKey != null) {
        result[firstKey] = value;
      }
    }
    return result;
  }
}
