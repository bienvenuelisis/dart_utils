/// Subtract operator on list
extension RemoveAll<E> on Iterable<E> {
  /// Minus operator
  Iterable<E> operator -(Iterable<E> other) => where(
        (e) => !other.contains(e),
      );
}
