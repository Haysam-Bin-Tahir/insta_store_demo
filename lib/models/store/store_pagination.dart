// Not persisted, not a Hive cache

import 'dart:math' as math;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta_store/models/store/store_ref.dart';
import 'package:insta_store/models/base_model.dart';
import 'package:rxdart/rxdart.dart';

/// Page of data, keys only
class DataPage<T extends AppBaseModel> {
  final int pageKey;
  final List<T> items;
  final List<T> allItems;

  // Keyset Pagination cursors
  DocumentSnapshot<Object>? nextCursor;
  DocumentSnapshot<Object>? prevCursor;

  DataPage({
    required this.pageKey,
    required this.items,
    required this.allItems,
    this.nextCursor,
    this.prevCursor,
  });

  int get length => items.length;
  int get totalLength => allItems.length;
  bool get isFirst => pageKey == 0;
  int? get nextPageKey => items.length < 30 ? null : pageKey + 1;
  int get previousPageKey => pageKey - 1;

  void removeAll() {
    items.clear();
    allItems.clear();
  }

  @override
  String toString() => 'Page($pageKey, length:$length, total:$totalLength';
}

class PaginationCache<T extends AppBaseModel> {
  final StoreRef<T> ref;
  // The pagination widgets only want new values, so no BehaviorSubject
  final PublishSubject<DataPage<T>> latest$ = PublishSubject<DataPage<T>>();
  final int pageLimit;

  int get itemsCount => latestPage?.length ?? 0;

  DataPage<T>? latestPage;

  PaginationCache(
    this.ref, {
    required this.pageLimit,
  });

  void addPageToSubject(DataPage<T> page) {
    latestPage = page;
    latest$.add(page);
  }

  void addLatestPage(
    int pageKey,
    List<T> items, {
    DocumentSnapshot<Object>? nextCursor,
    DocumentSnapshot<Object>? prevCursor,
  }) {
    List<T> allItems = ref.getValues().whereType<T>().toList();
    if (allItems.isEmpty) allItems = items;
    allItems = allItems.take((pageKey + 1) * pageLimit).toList();
    DataPage<T> latestPage = DataPage<T>(
      pageKey: pageKey,
      items: items,
      allItems: allItems,
      nextCursor: nextCursor,
      prevCursor: prevCursor,
    );
    addPageToSubject(latestPage);
  }

  void refreshData() {
    if (!ref.hasKeys()) return;
    final allItems = ref.getValues().whereType<T>().toList();
    final items = allItems.sublist(0, math.min(allItems.length, pageLimit));
    final lPage = latestPage;
    if (lPage == null) return;
    DataPage<T> newData = DataPage<T>(
      pageKey: lPage.pageKey,
      items: items,
      allItems: items,
    );
    addPageToSubject(newData);
  }

  DataPage<T>? getInitialData() {
    if (!ref.hasKeys()) return null;
    if (ref.getKeys()!.isEmpty) return null;
    final items = ref.getValues().whereType<T>().toList();
    final pageItems = items.sublist(0, math.min(items.length, pageLimit));
    return DataPage<T>(
      pageKey: 0,
      items: pageItems,
      allItems: pageItems,
    );
  }
}
