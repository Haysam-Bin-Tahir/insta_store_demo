import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:insta_store/models/item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class ProductService {
  BehaviorSubject<List<Item>> selectedItems$ =
      BehaviorSubject<List<Item>>.seeded([]);

  static final ProductService _instance = ProductService._internal();
  factory ProductService() => _instance;
  ProductService._internal();

  Future<void> syncDataToDB() async {
    // read data from assets
    final data1 = await rootBundle.loadString('assets/data/1.json');
    final data2 = await rootBundle.loadString('assets/data/2.json');
    final items = [];
    items.addAll(jsonDecode(data1));
    items.addAll(jsonDecode(data2));
    for (var i = 0; i < items.length; i++) {
      final data = items[i];
      await FirebaseFirestore.instance.collection('products').add(data);
      debugPrint('Added item $i');
    }
  }
}
