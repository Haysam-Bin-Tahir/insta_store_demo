import 'package:insta_store/models/store/store.dart';
import 'package:insta_store/models/store/store_ref.dart';
import 'package:insta_store/utils/subject_helper.dart';
import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/models/key_value.dart';
import 'package:rxdart/rxdart.dart';

class NoveltyStore<T extends AppBaseModel> {
  final String name;
  Store<KeyValue> store;
  StoreRef<KeyValue> get novelKeysRef =>
      store.getOrCreateStoreRef('$name:novelty');

  NoveltyStore(this.name) : store = Store<KeyValue>(name);

  Future<void> initialize() async {
    await store.initialize();
  }

  void markSeen(String key) {
    if (store.contains(key) && store.getValue(key)?.value == false) return;
    store.putValue(KeyValue(key, false));
    novelKeysRef.removeKey(key);
  }

  void markAllSeen(Iterable<String> items) {
    for (var item in items) {
      markSeen(item);
    }
  }

  bool isNovel(String key) {
    return store.getValue(key)?.value == true;
  }

  bool isSeen(String key) {
    return store.getValue(key)?.value == false;
  }

  Iterable<String> filterNovel(Iterable<String> keys) {
    return keys.where((item) => isNovel(item));
  }

  Iterable<String> filterSeen(Iterable<String> items) {
    return items.where((item) => isSeen(item));
  }

  BehaviorSubject<bool?> noveltySubject(String key) {
    return SubjectHelper.map<bool?, KeyValue?>(
      store.valueSubject(key),
      (p0) => p0?.value,
    );
  }

  BehaviorSubject<bool?> hasNovelKeys() {
    return SubjectHelper.map<bool, List<String>?>(
      novelKeysRef.keySubject(),
      (p0) => p0?.isNotEmpty ?? true,
    );
  }

  void putNovelKey(String key) {
    if (store.contains(key) && store.getValue(key)?.value == false) return;
    store.putValue(KeyValue(key, true));
    novelKeysRef.putKeys([key]);
  }

  void removeNovelKeys(List<String> keys) {
    store.removeKeys(keys);
    novelKeysRef.removeKeys(keys);
  }

  Future<void> reset() async {
    await novelKeysRef.reset();
    await store.reset();
  }
}
