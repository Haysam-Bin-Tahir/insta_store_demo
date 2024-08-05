import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta_store/models/base_model.dart';
import 'package:insta_store/models/store/store_pagination.dart';
import 'package:insta_store/models/store/store_ref.dart';
import 'package:rxdart/rxdart.dart';

abstract class ApiRepository {
  final _initialized = BehaviorSubject<bool>();

  Future<bool> get ready => _initialized.first;
  bool get initialized => _initialized.valueOrNull ?? false;

  Future<void> initialize() async {
    _initialized.add(true);
  }

  Future<void> reset() async {
    _initialized.drain();
  }

  void populatePaginationResponse<T extends AppBaseModel>({
    required int pageKey,
    required List<T> items,
    DocumentSnapshot<Object>? nextCursor,
    DocumentSnapshot<Object>? prevCursor,
    required StoreRef<T> ref,
    required PaginationCache<T> cache,
  }) {
    final keys = items.map((e) => e.key).toList();
    if (pageKey == 0) {
      ref.putKeys(keys);
    } else {
      ref.addKeys(keys, trailing: true);
    }
    cache.addLatestPage(
      pageKey,
      items,
      nextCursor: nextCursor,
      prevCursor: prevCursor,
    );
  }
}
