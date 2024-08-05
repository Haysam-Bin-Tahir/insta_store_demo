import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/models/store/store_pagination.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin PaginationBloc {
  PaginationCache<Item> get paginationCache => throw UnimplementedError();

  PagingController<int, Item> get pagingController =>
      throw UnimplementedError();

  StreamSubscription<DataPage<Item>?>? _pageSubscription;

  Future<void> setupPagination() async {
    _samePageCount = 0;
    final initialData = paginationCache.getInitialData();

    _pageSubscription = paginationCache.latest$.listen(_onPage);

    if (initialData != null) {
      // split in chunks of 30
      final chunkSize = paginationCache.pageLimit;
      final firstPage = initialData.allItems
          .sublist(0, min(chunkSize, initialData.allItems.length));
      pagingController.appendPage(firstPage, 1);
    }
    await fetchPage(0);
    fetchPage(1);
    pagingController.addPageRequestListener(_fetchPage);
  }

  void _onPage(DataPage<Item> page) {
    debugPrint(
        'New page of type $Item, pageKey: ${page.pageKey}, itemsCount: ${page.length}');
    final currentPageKey = pagingController.value.nextPageKey;
    if (currentPageKey != null && page.pageKey < currentPageKey) {
    } else {
      pagingController.value = PagingState(
        nextPageKey: page.nextPageKey,
        itemList: page.allItems,
      );
    }
  }

  int _samePageCount = 0;

  Future<void> _fetchPage(int pageKey, {bool ignoreFailSafe = false}) async {
    final page = paginationCache.latestPage;
    if (page != null && page.previousPageKey == pageKey) {
      _samePageCount++;
    } else {
      _samePageCount = 0;
    }
    if (_samePageCount >= 3 && !ignoreFailSafe) {
      debugPrint(
        'Fail safe pagination, same page request _samePageCount: $_samePageCount, pageKey: $pageKey, records: ${paginationCache.itemsCount}',
      );
      return;
    }

    await fetchPage(pageKey);
  }

  // Must implement
  Future<void> fetchPage(int pageKey) {
    throw UnimplementedError();
  }

  /// This starts a new fetch but only refreshes data once new data is available
  Future<void> refreshPagination() async {
    return _fetchPage(0, ignoreFailSafe: true);
  }

  void disposePagination() {
    _pageSubscription?.cancel();
    pagingController.dispose();
  }
}
