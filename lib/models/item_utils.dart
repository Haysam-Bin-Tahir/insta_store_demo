import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:insta_store/models/base_model.dart';

part 'item_utils.freezed.dart';
part 'item_utils.g.dart';

@freezed
@HiveType(typeId: 2)
class AiReviewsSummary extends AppBaseModel with _$AiReviewsSummary {
  factory AiReviewsSummary({
    @HiveField(0) required String text,
    @HiveField(1) required List<String> keywords,
  }) = _AiReviewsSummary;

  AiReviewsSummary._();

  factory AiReviewsSummary.fromJson(Map<String, dynamic> json) =>
      _$AiReviewsSummaryFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class Attribute extends AppBaseModel with _$Attribute {
  factory Attribute({
    @HiveField(0) required String key,
    @HiveField(1) required String value,
  }) = _Attribute;

  Attribute._();

  factory Attribute.fromJson(Map<String, dynamic> json) =>
      _$AttributeFromJson(json);
}

@freezed
@HiveType(typeId: 4)
class CategoryPageData extends AppBaseModel with _$CategoryPageData {
  factory CategoryPageData({
    @HiveField(0) required String categoryUrl,
    @HiveField(1) String? saleSummary,
    @HiveField(2) required bool isSponsored,
  }) = _CategoryPageData;

  CategoryPageData._();

  factory CategoryPageData.fromJson(Map<String, dynamic> json) =>
      _$CategoryPageDataFromJson(json);
}

@freezed
@HiveType(typeId: 5)
class Price extends AppBaseModel with _$Price {
  factory Price({
    @HiveField(0) required double value,
    @HiveField(1) required String currency,
  }) = _Price;

  Price._();

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
}

@freezed
@HiveType(typeId: 6)
class PriceRange extends AppBaseModel with _$PriceRange {
  factory PriceRange({
    @HiveField(0) required Price min,
    @HiveField(1) required Price max,
  }) = _PriceRange;

  PriceRange._();

  factory PriceRange.fromJson(Map<String, dynamic> json) =>
      _$PriceRangeFromJson(json);
}

@freezed
@HiveType(typeId: 7)
class Seller extends AppBaseModel with _$Seller {
  factory Seller({
    @HiveField(0) required String name,
    @HiveField(1) String? id,
    @HiveField(2) required String url,
    @HiveField(3) double? reviewsCount,
    @HiveField(4) double? averageRating,
  }) = _Seller;

  Seller._();

  factory Seller.fromJson(Map<String, dynamic> json) => _$SellerFromJson(json);
}

@freezed
@HiveType(typeId: 8)
class VariantDetail extends AppBaseModel with _$VariantDetail {
  factory VariantDetail({
    @HiveField(0) required String name,
    @HiveField(1) String? thumbnail,
    @HiveField(2) required List<String> images,
    @HiveField(3) required String asin,
  }) = _VariantDetail;

  VariantDetail._();

  factory VariantDetail.fromJson(Map<String, dynamic> json) =>
      _$VariantDetailFromJson(json);
}

@freezed
@HiveType(typeId: 9)
class BestSellersRank extends AppBaseModel with _$BestSellersRank {
  factory BestSellersRank({
    @HiveField(0) required String category,
    @HiveField(1) required int rank,
    @HiveField(2) required String url,
  }) = _BestSellersRank;

  BestSellersRank._();

  factory BestSellersRank.fromJson(Map<String, dynamic> json) =>
      _$BestSellersRankFromJson(json);
}
