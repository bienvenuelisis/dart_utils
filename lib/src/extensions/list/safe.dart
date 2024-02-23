import 'dart:collection';

/// SafeList in Flutter and Dart
class SafeList<T> extends ListBase<T> {
  /// SafeList
  ///
  SafeList({
    required this.defaultValue,
    required this.absentValue,
    List<T>? values,
  }) : _list = values ?? [];
  final List<T> _list;

  /// Default value is used whenever we are populating the list
  final T defaultValue;

  /// Absent value is used whenever we are accessing a value that does not exist
  final T absentValue;

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;

  @override
  set length(int newValue) {
    if (newValue < _list.length) {
      _list.length = newValue;
    } else {
      _list.addAll(List.filled(newValue - _list.length, defaultValue));
    }
  }
}
