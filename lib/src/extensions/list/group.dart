/// Group list in Dart
extension GroupByFold<T extends Object> on Iterable<T> {
  /// Flatten list
  Iterable<S> group<S>(Iterable<S> Function(T) mapItem) {
    return map(mapItem).fold(
      <S>[],
      (previousValue, element) => [
        ...previousValue,
        ...element,
      ],
    );
  }

  ///
  Iterable<S> groupUniques<S>(Iterable<S> Function(T) mapItem) {
    return [
      ...{...group(mapItem)},
    ];
  }
}

///
extension ReGroupByFold<T extends Object> on Iterable<Iterable<T>> {
  ///
  Iterable<T> get reGrouped {
    return fold(
      <T>[],
      (previousValue, element) => [
        ...previousValue,
        ...element,
      ],
    );
  }

  ///
  Iterable<T> get reGroupedUniques {
    return [
      ...{...reGrouped},
    ];
  }
}
