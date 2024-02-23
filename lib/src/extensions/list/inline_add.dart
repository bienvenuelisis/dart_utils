/// Inline add extensions on [Iterable]
extension InlineAdd<T> on Iterable<T> {
  /// Add an element to the end of the iterable
  Iterable<T> operator +(T other) => followedBy([other]);

  /// Add an iterable to the end of the iterable
  Iterable<T> operator &(Iterable<T> other) => followedBy(other);
}
