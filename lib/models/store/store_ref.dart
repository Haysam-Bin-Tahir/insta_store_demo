import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/utils/subject_helper.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

import 'base_store.dart';

class StoreRef<T extends AppBaseModel> {
  final String refName;
  final BaseStore<T> store;

  StoreRef(this.refName, this.store);

  Box<List<String>> get refs => store.refs;

  final BehaviorSubject<List<String>?> _keySubject =
      BehaviorSubject<List<String>?>();

  BehaviorSubject<List<String>?> keySubject() {
    return _keySubject;
  }

  BehaviorSubject<List<T>?> valueSubject() {
    return SubjectHelper.map<List<T>?, List<String>?>(
      _keySubject,
      (keys) {
        if (keys == null) return null;
        return store.getValues(keys).whereType<T>().toList();
      },
    );
  }

  BehaviorSubject<T?> valueSubjectLatest(int Function(T, T) compare) {
    return SubjectHelper.map<T?, List<String>?>(
      _keySubject,
      (keys) {
        if (keys == null) return null;
        final values = store.getValues(keys).whereType<T>().toList();
        final storedValues = values..sort(compare);
        if (storedValues.isEmpty) return null;
        return storedValues.first;
      },
    );
  }

  bool hasKeys() => refs.containsKey(refName);

  /// Can return [null] in case we store a single null key
  List<String>? getKeys() => refs.get(refName)?.cast<String>();

  List<String> getKeysStrict() {
    if (!hasKeys() || refs.get(refName) == null) return [];
    return refs.get(refName)!.cast<String>();
  }

  String? getSingleKey() {
    if (getKeys() == null || getKeys()!.isEmpty) return null;
    return getKeys()![0];
  }

  // Will never return [null], if you want to check if a [null] was put, use [getKeys()]
  List<T?> getValues() {
    if (getKeys() == null) return [];
    // if (!collection.containsAny(getKeys())) return null;
    return store.getValues(getKeys()!);
  }

  List<T> getValuesStrict() {
    final values = getValues();
    return values.whereType<T>().toList();
  }

  T? getSingleValue() {
    if (getKeys() == null) return null;
    if (getValues().isEmpty) return null;
    return getValues()[0];
  }

  putKeysAndValues(Iterable<T> items) {
    // Don't really have to await but it just saves a lot of work in the combine stream
    store.putValues(items);
    putKeysFromItems(items);
  }

  putKeysFromItems(Iterable<T> items) {
    // Don't really have to await but it just saves a lot of work in the combine stream
    putKeys(items.map((i) => i.key));
  }

  addKeysFromItems(Iterable<T> items, {trailing = false, bump = false}) {
    addKeys(items.map((i) => i.key), trailing: trailing, bump: bump);
  }

  putSingleValue(T item) {
    store.putValues([item]);
  }

  /// Does not need to be awaited, getKeys shows correct result straight away
  Future<void> putKeys(Iterable<String> keys) {
    _populateSubjects(keys.toList());
    return refs.put(refName, keys.toList());
  }

  /// This has set semantics - no duplicates
  /// bump: true -> put the key back/start even if it's not new
  addKey(String key, {trailing = false, bump = false}) {
    List<String> old =
        refs.get(refName)?.whereType<String>().toList() ?? <String>[];
    if (!old.contains(key) || old.contains(key) && bump) {
      putKeys((trailing ? old + [key] : [key] + old).toSet().toList());
    }
  }

  /// bump: true -> put the key back/start even if it's not new
  addKeys(Iterable<String> keys, {trailing = false, bump = false}) {
    List<String> old =
        refs.get(refName)?.whereType<String>().toList() ?? <String>[];
    if (bump) {
      // Refresh all keys no matter what
      putKeys((trailing ? old + keys.toList() : keys.toList() + old)
          .toSet()
          .toList());
    } else {
      List<String> diffKeys = keys.toSet().difference(old.toSet()).toList();
      putKeys((trailing ? old + diffKeys : diffKeys + old).toSet().toList());
    }
  }

  contains(String key) {
    List<String> keys = refs.get(refName) ?? <String>[];
    int index = keys.indexWhere((k) => k == key);
    return index >= 0;
  }

  removeKey(String? key) {
    final List<String>? old = refs.get(refName);
    if (old == null) return false;
    final oldLength = old.length;
    final newKeys = old.where((other) => other != key).toList();
    putKeys(newKeys);
    final newLength = newKeys.length;
    return oldLength != newLength;
  }

  removeKeys(Iterable<String> keys) {
    final List<String>? old = refs.get(refName);
    if (old == null) return false;
    final oldLength = old.length;
    final newKeys = old.where((other) => !keys.contains(other)).toList();
    putKeys(newKeys);
    final newLength = newKeys.length;
    return oldLength != newLength;
  }

  Future<void> clear() async {
    await putKeys([]);
  }

  /// Should be called by the collection it refers to
  Future<void> reset() async {
    // Nothing to do actually, everything is handled by subject creators
  }

  _populateSubjects(List<String> keys) {
    _keySubject.add(keys);
  }
}
