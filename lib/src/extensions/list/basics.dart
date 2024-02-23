/// Extensions on List
extension ListEnhanced<T> on List<T> {
  /// Returns the first element that satisfies the given predicate or null.

  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }

  /// Returns the last element that satisfies the given predicate or null.
  T? lastWhereOrNull(bool Function(T element) test) {
    for (final element in reversed) {
      if (test(element)) {
        return element;
      }
    }

    return null;
  }

  /// Replace all elements that satisfy the given predicate with the given
  /// replacement.
  bool replaceWhere(bool Function(T element) test, T replacement) {
    var index = 0;
    for (final element in this) {
      if (test(element)) {
        this[index] = replacement;
        return true;
      }
      index++;

      if (index == length) {
        add(replacement);
        return true;
      }
    }

    return false;
  }

  /// Replace the first element that satisfy the given predicate with the given
  /// replacement.
  bool replaceFirstWhere(bool Function(T element) test, T replacement) {
    var index = 0;
    for (final element in this) {
      if (test(element)) {
        this[index] = replacement;
        return true;
      }
      index++;

      if (index == length) {
        add(replacement);
        return true;
      }
    }

    return false;
  }
}
