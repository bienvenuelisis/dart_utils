/// Identify hardcoded strings in code
extension Hardcoded on String {
  /// Hardcoded
  String get hardcoded => '$this 🧨';
}

/// Minus
extension Minus on String {
  /// Remove all occurrences of [rhs] in string using [-] operator
  /// (use [replaceAll]) under the hood.
  String operator -(String rhs) => replaceAll(rhs, '');
}

///
extension StringUtils on String {
  ///
  String get capitalize {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  ///
  String get capitalizeWords {
    return split(' ').map((e) => e.capitalize).join(' ');
  }
}
