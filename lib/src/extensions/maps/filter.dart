/// Filter method enhancement on map
extension Filter<K, V> on Map<K, V> {
  /// Filter a map by a predicate function
  Iterable<MapEntry<K, V>> filter(
    bool Function(MapEntry<K, V> entry) f,
  ) sync* {
    for (final entry in entries) {
      if (f(entry)) {
        yield entry;
      }
    }
  }
}
