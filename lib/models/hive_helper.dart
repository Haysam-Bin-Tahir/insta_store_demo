import 'package:flutter/material.dart';
import 'package:insta_store/models/item.dart';
import 'package:insta_store/models/item_utils.dart';
import 'package:insta_store/models/key_value.dart';
import 'package:insta_store/utils/app_path.dart';

import 'package:hive_flutter/hive_flutter.dart';

///this singleton should be in the insta_store _app

class HiveHelper {
  /// You can only register adapters once, so keep track
  bool hiveInitialized = false;
  static final HiveHelper _instance = HiveHelper._internal();

  HiveHelper._internal();
  factory HiveHelper() => _instance;

  /// Creates folders -- can this crash?
  initFlutter() async {
    // I think this is retryable
    await AppPath.createStorageDirectory();
    await Hive.initFlutter(AppPath.getStorageRelativePath());
    // Subdirectory for database-specific
    await AppPath.createDatabaseDirectory();
  }

  /// Initialises adapters
  /// If adapters conflict that's not a db issue but a code issue
  Future<void> registerAdapters() async {
    // This is now run in initializeForLocalStorage
    // I think this is retryable
    // await Hive.initFlutter(await AppPath.getDatabaseRelativePath());

    if (hiveInitialized) {
      debugPrint("Hive already initialized -- aborting");
      return;
    }
    Hive.registerAdapter(KeyValueAdapter());
    Hive.registerAdapter(ItemAdapter());
    Hive.registerAdapter(AiReviewsSummaryAdapter());
    Hive.registerAdapter(AttributeAdapter());

    Hive.registerAdapter(CategoryPageDataAdapter());
    Hive.registerAdapter(PriceAdapter());
    Hive.registerAdapter(PriceRangeAdapter());

    //Location
    Hive.registerAdapter(SellerAdapter());
    Hive.registerAdapter(VariantDetailAdapter());
    Hive.registerAdapter(BestSellersRankAdapter());
    hiveInitialized = true;
  }

  Future<void> onHiveError() async {
    hiveInitialized = false;
    debugPrint("Trying to delete the whole database because of HiveError");
    await HiveHelper.deleteWholeDatabase();
    debugPrint("Finished deleting the whole database");
  }

  static deleteWholeDatabase() async {
    final dir = await AppPath.getDatabaseDirectory();
    if (dir.existsSync()) {
      try {
        await dir.delete(
          recursive: true,
        );
      } catch (e) {
        debugPrint("Error while clearing database - I give up");
      }
    } else {
      debugPrint("Database path didn't exist, nothing to do");
    }
  }
}
