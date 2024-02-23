/// Enhance double
extension DecimalPoints on double {
  /// Format a double with n decimal points
  double withDecimalPoints(int n) {
    return double.parse(toStringAsFixed(n));
  }

  /// Format a double with n decimal points as string
  String withDecimalPointsFormatted(int n) {
    final numString = withDecimalPoints(n).toString();
    final missingZeros = n - numString.split('.')[1].length;

    return "$numString${'0' * missingZeros}";
  }
}
