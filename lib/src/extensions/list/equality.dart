/// Equality on list
// ignore: strict_raw_type
extension ListEqualityEnhancement<T extends Comparable> on List<T> {
  /// Check if the list is equal to another one
  bool isEqualTo(List<T> other) {
    if (other.length != length) {
      return false;
    }
    for (var i = 0; i < length; i++) {
      if (other[i] != this[i]) {
        return false;
      }
    }
    return true;
  }
}
