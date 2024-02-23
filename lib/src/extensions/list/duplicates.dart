/// Manage duplicates in lists
extension Duplicates<T> on List<T> {
  /// Add all the elements in [values] to the list if they are not already in
  void addAllByAvoidingDuplicates(Iterable<T> values) =>
      replaceRange(0, length, {
        ...[...this] + [...values],
      });

  /// Get the number of duplicates
  int get numberOfDuplicates => length - {...this}.length;

  /// Check if the list contains duplicates
  bool get containsDuplicates => numberOfDuplicates > 0;

  /// Get the uniques
  List<T> get uniques => [
        ...{...this},
      ];

  /// Remove duplicates
  void removeDuplicates() => replaceRange(
        0,
        length,
        uniques,
      );

  /// Get the duplicates
  List<T> get duplicates => [
        for (var i = 0; i < length; i++)
          [...this].skip(i + 1).contains(this[i]) ? this[i] : null,
      ].whereType<T>().toList();
}
