/// Range Extension on numbers
extension Range on int {
  /// List of int from this to [endPoint] without the last number.
  List<int> until(int endPoint) {
    return to(endPoint)..removeLast();
  }

  /// List of int from this to [endPoint]
  List<int> to(int endPoint) {
    final numbers = <int>[];
    if (endPoint > this) {
      for (var i = this; i <= endPoint; i++) {
        numbers.add(i);
      }
    } else {
      for (var i = this; i >= endPoint; i--) {
        numbers.add(i);
      }
    }
    return numbers;
  }
}
