import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/models/store/store.dart';
import 'package:insta_store/models/store/store_pagination.dart';
import 'package:insta_store/models/store/store_ref.dart';
import './api_repository.dart';

class ProductRepository extends ApiRepository {
  static final ProductRepository _singleton = ProductRepository._internal();
  factory ProductRepository() => _singleton;
  ProductRepository._internal();

  final products = Store<Item>('products');

  StoreRef<Item> get itemsRef {
    return products.getOrCreateStoreRef('items');
  }

  StoreRef<Item> relatedItemsRef(String id) {
    return products.getOrCreateStoreRef('items:$id');
  }

  PaginationCache<Item> get itemsPagination => products.getOrCreatePagination(
        itemsRef,
        pageLimit: 30,
      );

  PaginationCache<Item> relatedItemsPagination(String id) =>
      products.getOrCreatePagination(
        relatedItemsRef(id),
        pageLimit: 30,
      );

  @override
  Future<void> initialize() async {
    await products.initialize();
  }

  Future<void> fetchProducts(int pageKey) async {
    final db = FirebaseFirestore.instance;
    final items = <Item>[];
    final lastDoc = itemsPagination.latestPage?.nextCursor;
    QuerySnapshot<Map<String, dynamic>> results;
    if (lastDoc != null) {
      results = await db
          .collection('products')
          .orderBy('asin')
          .startAfterDocument(lastDoc)
          .limit(30)
          .get();
    } else {
      results = await db.collection('products').orderBy('asin').limit(30).get();
    }

    for (final doc in results.docs) {
      final item = Item.fromJson(doc.data());
      items.add(item);
    }

    products.putValues(items);
    populatePaginationResponse(
      pageKey: pageKey,
      items: items,
      ref: itemsRef,
      cache: itemsPagination,
      nextCursor: results.docs.isNotEmpty ? results.docs.last : null,
      prevCursor: lastDoc,
    );
  }

  Future<void> fetchRelatedProducts(int pageKey, Item product) async {
    final db = FirebaseFirestore.instance;
    final items = <Item>[];
    final page = relatedItemsPagination(product.key).latestPage;
    DocumentSnapshot<Object>? lastDoc = page?.nextCursor;
    if (page?.pageKey != null && page!.pageKey > pageKey) {
      lastDoc = null;
    }
    QuerySnapshot<Map<String, dynamic>> results;
    if (lastDoc != null) {
      results = await db
          .collection('products')
          .orderBy('asin')
          .where('brand', isEqualTo: product.brand)
          .where('asin', isNotEqualTo: product.asin)
          .startAfterDocument(lastDoc)
          .limit(30)
          .get();
    } else {
      results = await db
          .collection('products')
          .orderBy('asin')
          .where('brand', isEqualTo: product.brand)
          .where('asin', isNotEqualTo: product.asin)
          .limit(30)
          .get();
    }

    for (final doc in results.docs) {
      final item = Item.fromJson(doc.data());
      items.add(item);
    }

    products.putValues(items);
    populatePaginationResponse(
      pageKey: pageKey,
      items: items,
      ref: relatedItemsRef(product.key),
      cache: relatedItemsPagination(product.key),
      nextCursor: results.docs.isNotEmpty ? results.docs.last : null,
      prevCursor: lastDoc,
    );
  }
}
