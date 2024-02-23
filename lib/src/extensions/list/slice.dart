/// Splice a list
extension Splice<T> on List<T> {
  /// Remove items from [start] to [start + count] and replace them with
  /// [insert]
  Iterable<T> splice(int start, int count, [List<T>? insert]) {
    final result = [...getRange(start, start + count)];
    replaceRange(start, start + count, insert ?? []);
    return result;
  }
}
