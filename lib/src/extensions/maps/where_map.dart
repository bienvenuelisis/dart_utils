/// Apply filters on map objects
extension DetailedWhere<K, V> on Map<K, V> {
  /// Filter the map based on [f] function.
  Map<K, V> where(bool Function(K key, V value) f) => Map<K, V>.fromEntries(
        entries.where((entry) => f(entry.key, entry.value)),
      );

  /// Filter the map based on [f] function.
  Map<K, V> whereKey(bool Function(K key) f) =>
      {...where((key, value) => f(key))};

  /// Filter the map based on [f] function.
  Map<K, V> whereValue(bool Function(V value) f) =>
      {...where((key, value) => f(value))};
}
