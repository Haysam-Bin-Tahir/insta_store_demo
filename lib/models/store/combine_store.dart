import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/utils/app_path.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

import 'base_store.dart';

class StoreInfo<T extends AppBaseModel> {
  BaseStore<T> store;
  Function(String)? keyModifier;
  bool seedNull;
  StoreInfo({
    required this.store,
    this.keyModifier,
    this.seedNull = false,
  });
}

class CombineStore<T extends AppBaseModel> extends BaseStore<T> {
  // don't use final intializers for stores except store names;
  List<StoreInfo> stores = [];
  BehaviorSubject<T?> Function(String, List<BehaviorSubject>) combiner =
      (p0, p1) {
    return BehaviorSubject.seeded(null);
  };

  CombineStore(super.name) : super();

  Future<void> initialize(
    List<StoreInfo> stores,
    BehaviorSubject<T?> Function(String, List<BehaviorSubject>) combiner,
  ) async {
    this.stores = stores;
    this.combiner = combiner;
    if (useMemory) return;
    refs = await Hive.openBox<List<String>>(referencesName,
        path: (await AppPath.getDatabaseDirectory()).path);
    debugPrint('Initialized store $name, refs: ${refs.length}');
  }

  @override
  BehaviorSubject<T?> valueSubject(
    String key, {
    Function(BehaviorSubject<T?>, String id)? onCreate,
    bool seedNull = false,
  }) {
    BehaviorSubject<T?> subject =
        seedNull ? BehaviorSubject<T?>.seeded(null) : BehaviorSubject<T?>();

    final subjects = <BehaviorSubject>[];
    for (var storeInfo in stores) {
      final store = storeInfo.store;
      String modKey = key;
      if (storeInfo.keyModifier != null) modKey = storeInfo.keyModifier!(key);

      final subject = store.valueSubject(
        modKey,
        seedNull: storeInfo.seedNull,
      );
      subjects.add(subject);
    }

    subject = combiner(key, subjects);

    onCreate?.call(subject, key);

    return subject;
  }

  @override
  T? getValue(String key) {
    final subject = this.valueSubject(key);
    return subject.valueOrNull;
  }

  @override
  List<T?> getValues(Iterable<String> keys, {bool filterNull = true}) {
    final List<BehaviorSubject<T?>> subjects = [];
    for (var key in keys) {
      final subject = this.valueSubject(key);
      subjects.add(subject);
    }
    final values = subjects.map((subject) => subject.valueOrNull);
    if (filterNull) return values.whereType<T>().toList();
    return values.toList();
  }

  @override
  void putValue(T item) {
    throw UnimplementedError('You cannot put a value in a CombineStore');
  }

  @override
  void putValues(Iterable<T> items) {
    throw UnimplementedError('You cannot put values in a CombineStore');
  }

  @override
  bool contains(String key) {
    throw UnimplementedError(
        'You cannot check if a CombineStore contains a key');
  }

  @override
  bool containsAny(Iterable<String> keys) {
    throw UnimplementedError(
        'You cannot check if a CombineStore contains any key');
  }

  @override
  bool containsAll(Iterable<String> keys) {
    throw UnimplementedError(
        'You cannot check if a CombineStore contains all keys');
  }

  Future<void> reset() async {
    await Future.wait(storeRefs.entries.map((e) => e.value.reset()));
    await Future.wait([
      refs.deleteFromDisk(),
    ]);
  }
}
