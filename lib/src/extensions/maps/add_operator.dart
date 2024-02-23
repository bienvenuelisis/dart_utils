/// Add operator extension
extension AddOperator<K, V> on Map<K, V> {
  /// Add using [+] operator
  Map<K, V> operator +(Map<K, V> other) => {...this}..addAll(other);
}
