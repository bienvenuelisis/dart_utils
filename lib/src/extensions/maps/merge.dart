/// Merging Maps in Dart
extension Merge<K, V> on Map<K, V> {
  /// Merge two maps with [|] operator
  Map<K, V> operator |(Map<K, V> other) => {...this}..addEntries(
      other.entries,
    );
}
