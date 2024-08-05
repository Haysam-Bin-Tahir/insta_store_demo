import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/models/store/base_store.dart';
import 'package:insta_store/models/store/store_helpers.dart';
import 'package:insta_store/utils/app_path.dart';
import 'package:insta_store/utils/pred.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

import 'memory_box.dart';

class Store<T extends AppBaseModel> extends BaseStore<T> {
  Store(super.name);

  Future<void> initialize() async {
    if (useMemory) {
      box = MemoryBox<T>(name);
      refs = MemoryBox<List<String>>(referencesName);
      return;
    }
    box = await Hive.openBox<T>(name,
        path: (await AppPath.getDatabaseDirectory()).path);
    //initialize the references box
    refs = await Hive.openBox<List<String>>(referencesName,
        path: (await AppPath.getDatabaseDirectory()).path);
  }

  final Map<String, BehaviorSubject<T?>> _subjectsByKey = {};

  BehaviorSubject<T?> _initializeSubject(
    String key, {
    bool seedNull = false,
  }) {
    BehaviorSubject<T?> subject;
    if (box.containsKey(key)) {
      final item = box.get(key);
      subject = BehaviorSubject<T?>.seeded(item);
    } else if (seedNull) {
      subject = BehaviorSubject<T?>.seeded(null);
    } else {
      subject = BehaviorSubject<T?>();
    }

    subject
        .addStream(box
            .watch(key: key)
            .map((event) => event.deleted ? null : event.value as T?)
            .distinct())
        .then((_) => subject.close());

    return subject;
  }

  @override
  BehaviorSubject<T?> valueSubject(
    String key, {
    Function(BehaviorSubject<T?>, String id)? onCreate,
    bool seedNull = false,
  }) {
    if (!box.isOpen) return BehaviorSubject<T?>.seeded(null);
    return StoreHelpers.getSubjectFromSubjectMap(
      key,
      _subjectsByKey,
      subjectBuilder: _initializeSubject,
      seedNull: seedNull,
      onCreate: onCreate,
    );
  }

  Map<String, T?> getValuesMap(Iterable<String> keys) {
    return {for (var k in keys) k: box.get(k)};
  }

  @override
  T? getValue(String key) {
    return box.get(key);
  }

  @override
  List<T?> getValues(Iterable<String> keys, {filterNull = true}) {
    final values = getValuesMap(keys).entries.map((e) => e.value);
    if (filterNull) return values.where(Pred.isntNull).toList();
    return values.toList();
  }

  @override
  void putValue(T item) {
    putValues([item]);
  }

  @override
  void putValues(Iterable<T?> items) {
    // ignore: prefer_for_elements_to_map_fromiterable
    box.putAll(Map<String, T>.fromIterable(
      items.where((item) => item != null),
      key: (item) => item.key,
      value: (item) => item,
    ));
  }

  @override
  bool contains(String key) {
    return box.containsKey(key);
  }

  @override
  bool containsAny(Iterable<String> keys) {
    return keys.any((key) => box.containsKey(key));
  }

  @override
  bool containsAll(Iterable<String> keys) {
    return keys.every((key) => box.containsKey(key));
  }

  Stream<T?> watchKey(String key) {
    return box.watch(key: key).map(
          (event) => event.deleted ? null : event.value,
        );
  }

  void removeKey(String key) {
    box.delete(key);
  }

  void removeKeys(Iterable<String> keys) {
    box.deleteAll(keys);
  }

  int get itemCount {
    return box.length;
  }

  Iterable get boxKeys {
    return box.keys;
  }

  void delete(List<String> keys) {
    box.deleteAll(keys);
  }

  /// Only works if the box is already initialised
  /// Deletes all data and closes all boxes
  /// Safe to call initialize after
  /// Will also reset all collection references
  Future<void> reset() async {
    _subjectsByKey.clear();

    await Future.wait(storeRefs.entries.map((e) => e.value.reset()));
    // NOTE had a weird issue that Hive couldn't reopen after deleting boxes
    // So I decided to clear them instead..
    await box.deleteFromDisk();
    box = MemoryBox('');
  }

  /// Clears all data but leaves boxes open and alive
  Future<void> clear() async {
    _subjectsByKey.clear();
    await box.clear();
  }

  /// Works even if box is closed or not even instantiated
  Future<void> destroy() async {
    await Future.wait([
      if (await Hive.boxExists(name)) Hive.deleteBoxFromDisk(name),
      if (await Hive.boxExists(referencesName))
        Hive.deleteBoxFromDisk(referencesName),
    ]);
  }
}
