import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:insta_store/models/base_model.dart';

import 'package:insta_store/models/item_utils.dart';

part 'item.g.dart';
part 'item.freezed.dart';

@freezed
@HiveType(typeId: 1)
class Item extends AppBaseModel with _$Item {
  factory Item({
    @HiveField(0) required String title,
    @HiveField(1) required String url,
    @HiveField(2) required String asin,
    @HiveField(3) Price? price,
    @HiveField(6) Price? listPrice,
    @HiveField(7) required String brand,
    @HiveField(8) required String thumbnailImage,
    @HiveField(9) required List<String> galleryThumbnails,
    @HiveField(10) required List<String> highResolutionImages,
    @HiveField(11) String? description,
    @HiveField(12) Seller? seller,
  }) = _Item;

  Item._();

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  @override
  String get key {
    return asin;
  }
}
