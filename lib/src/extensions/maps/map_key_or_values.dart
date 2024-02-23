/// Key and Value Mapping
extension DetailedMap<K, V> on Map<K, V> {
  /// Map keys with [f] function
  Map<R, V> mappedKeys<R>(R Function(K) f) =>
      map((key, value) => MapEntry(f(key), value));

  /// Map values with [f] function
  Map<K, R> mappedValues<R>(R Function(V) f) =>
      map((key, value) => MapEntry(key, f(value)));
}
