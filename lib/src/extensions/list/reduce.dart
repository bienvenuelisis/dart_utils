/// Addition
T plus<T extends num>(T a, T b) => (a + b) as T;

/// Subtraction
T minus<T extends num>(T a, T b) => (a - b) as T;

/// Multiplication
T times<T extends num>(T a, T b) => (a * b) as T;

/// Division
T divide<T extends num>(T a, T b) => (a / b) as T;

/// Modulo
T mod<T extends num>(T a, T b) => (a % b) as T;
