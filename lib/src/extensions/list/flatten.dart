/// Flatten list in Dart
extension Flatten<T extends Object> on Iterable<T> {
  /// Flatten list
  Iterable<T> flatten() {
    Iterable<T> flatten(Iterable<T> list) sync* {
      for (final value in list) {
        if (value is List<T>) {
          yield* flatten(value);
        } else {
          yield value;
        }
      }
    }

    return flatten(this);
  }
}
