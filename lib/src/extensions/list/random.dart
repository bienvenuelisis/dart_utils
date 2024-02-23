import 'dart:math' as math show Random;

/// Random element
extension RandomElement<T> on Iterable<T> {
  /// Get random element
  T getRandomElement() => elementAt(
        math.Random().nextInt(length),
      );

  /// Get random element
  T get random => getRandomElement();
}
