class Pred {
  static bool Function(T) isnt<T>(T thing) =>
      (otherThing) => thing != otherThing;

  static bool Function(T) equals<T>(T thing) =>
      (otherThing) => thing == otherThing;

  static bool isNull<T>(T thing) => equals<T?>(null)(thing);

  static bool isntNull<T>(T thing) => isnt<T?>(null)(thing);

  static bool isTrue(bool thing) => thing == true;

  static T identity<T>(T i) => i;
}
