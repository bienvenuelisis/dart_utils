/// Map to List
extension ListToMap<T> on Iterable<T> {
  /// Transform list to map
  List<E> mapList<E>(E Function(T) toElement) => map(toElement).toList();
}
