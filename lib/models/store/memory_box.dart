import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

class MemoryBox<E> extends Box<E> {
  final String _name;

  MemoryBox(String name) : _name = name;
  final Map<String, E> _value = {};

  final BehaviorSubject<BoxEvent?> _watch$ =
      BehaviorSubject<BoxEvent?>.seeded(null);

  @override
  Future<int> add(E value) {
    throw UnimplementedError();
  }

  @override
  Future<Iterable<int>> addAll(Iterable<E> values) {
    throw UnimplementedError();
  }

  @override
  Future<int> clear() async {
    final length = _value.length;
    _value.forEach((key, value) async {
      _watch$.add(BoxEvent(key, value, true));
    });
    _value.clear();
    return length;
  }

  @override
  Future<void> close() {
    return clear();
  }

  @override
  Future<void> compact() {
    throw UnimplementedError();
  }

  @override
  bool containsKey(key) {
    return _value.containsKey(key);
  }

  @override
  Future<void> delete(key) async {
    if (containsKey(key)) {
      _value.remove(key);
      _watch$.add(BoxEvent(key, _value[key], true));
    }
  }

  @override
  Future<void> deleteAll(Iterable keys) async {
    // ignore: avoid_function_literals_in_foreach_calls
    keys.forEach((key) async {
      await delete(key);
    });
  }

  @override
  Future<void> deleteAt(int index) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFromDisk() async {
    await clear();
  }

  @override
  Future<void> flush() {
    return clear();
  }

  @override
  E? get(key, {E? defaultValue}) {
    if (containsKey(key)) {
      return _value[key];
    }
    return defaultValue;
  }

  @override
  E? getAt(int index) {
    throw UnimplementedError();
  }

  @override
  bool get isEmpty {
    return _value.isEmpty;
  }

  @override
  bool get isNotEmpty {
    return _value.isNotEmpty;
  }

  @override
  bool get isOpen {
    return true;
  }

  @override
  keyAt(int index) {
    throw UnimplementedError();
  }

  @override
  Iterable get keys => _value.keys;

  @override
  bool get lazy => false;

  @override
  int get length => _value.length;

  @override
  String get name => _name;

  @override
  String? get path => throw UnimplementedError();

  @override
  Future<void> put(key, E value) {
    _value[key] = value;
    _watch$.add(BoxEvent(key, value, false));
    return Future.value();
  }

  @override
  Future<void> putAll(Map<dynamic, E> entries) {
    entries.forEach((key, value) async {
      await put(key, value);
    });
    return Future.value();
  }

  @override
  Future<void> putAt(int index, E value) {
    throw UnimplementedError();
  }

  @override
  Map<dynamic, E> toMap() {
    throw UnimplementedError();
  }

  @override
  Iterable<E> get values => _value.values;

  @override
  Iterable<E> valuesBetween({startKey, endKey}) {
    throw UnimplementedError();
  }

  @override
  Stream<BoxEvent> watch({key}) {
    return _watch$.where((event) {
      if (key != null) {
        return event?.key == key;
      }
      return true;
    }).map((event) {
      return BoxEvent(event?.key, event?.value, event?.deleted ?? false);
    });
  }
}
