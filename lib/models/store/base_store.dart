import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/models/store/memory_box.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';
import 'store_pagination.dart';
import 'store_ref.dart';

abstract class BaseStore<T extends AppBaseModel> {
  final String name;
  String get referencesName => '$name:references';

  final Map<String, StoreRef<T>> storeRefs = {};

  Box<T> box = MemoryBox('name');
  Box<List<String>> refs = MemoryBox('name');

  final Map<String, PaginationCache<T>> paginations = {};

  BaseStore(this.name);

  static bool _useMemory = false;

  bool get useMemory => BaseStore._useMemory;

  static void setUseMemory(bool useMemory) {
    BaseStore._useMemory = useMemory;
  }

  T? getValue(String key);

  List<T?> getValues(Iterable<String> keys, {bool filterNull = true});

  void putValue(T item);

  void putValues(Iterable<T> items);

  bool contains(String key);

  bool containsAny(Iterable<String> keys);

  bool containsAll(Iterable<String> keys);

  StoreRef<T> createStoreRef(String refName) {
    final refCollection = StoreRef<T>(refName, this);
    storeRefs[refName] = refCollection;
    return refCollection;
  }

  StoreRef<T>? getStoreRef(String refName) {
    if (storeRefs.containsKey(refName)) return storeRefs[refName];
    return null;
  }

  StoreRef<T> getOrCreateStoreRef(String refName) {
    return getStoreRef(refName) ?? createStoreRef(refName);
  }

  PaginationCache<T> getOrCreatePaginationByRefName(String refName,
      {required int pageLimit}) {
    return getOrCreatePagination(getOrCreateStoreRef(refName),
        pageLimit: pageLimit);
  }

  PaginationCache<T> getOrCreatePagination(StoreRef<T> ref,
      {required int pageLimit}) {
    if (!paginations.containsKey(ref.refName)) {
      paginations[ref.refName] = PaginationCache<T>(ref, pageLimit: pageLimit);
    }
    return paginations[ref.refName]!;
  }

  BehaviorSubject<T?> valueSubject(
    String key, {
    Function(BehaviorSubject<T?>, String id)? onCreate,
    bool seedNull = false,
  });
}
