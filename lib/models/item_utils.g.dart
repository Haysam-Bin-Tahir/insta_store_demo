// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_utils.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AiReviewsSummaryAdapter extends TypeAdapter<AiReviewsSummary> {
  @override
  final int typeId = 2;

  @override
  AiReviewsSummary read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AiReviewsSummary(
      text: fields[0] as String,
      keywords: (fields[1] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, AiReviewsSummary obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.keywords);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AiReviewsSummaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AttributeAdapter extends TypeAdapter<Attribute> {
  @override
  final int typeId = 3;

  @override
  Attribute read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Attribute(
      key: fields[0] as String,
      value: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Attribute obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttributeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CategoryPageDataAdapter extends TypeAdapter<CategoryPageData> {
  @override
  final int typeId = 4;

  @override
  CategoryPageData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryPageData(
      categoryUrl: fields[0] as String,
      saleSummary: fields[1] as String?,
      isSponsored: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CategoryPageData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.categoryUrl)
      ..writeByte(1)
      ..write(obj.saleSummary)
      ..writeByte(2)
      ..write(obj.isSponsored);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryPageDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PriceAdapter extends TypeAdapter<Price> {
  @override
  final int typeId = 5;

  @override
  Price read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Price(
      value: fields[0] as double,
      currency: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Price obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.currency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PriceRangeAdapter extends TypeAdapter<PriceRange> {
  @override
  final int typeId = 6;

  @override
  PriceRange read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PriceRange(
      min: fields[0] as Price,
      max: fields[1] as Price,
    );
  }

  @override
  void write(BinaryWriter writer, PriceRange obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.min)
      ..writeByte(1)
      ..write(obj.max);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PriceRangeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SellerAdapter extends TypeAdapter<Seller> {
  @override
  final int typeId = 7;

  @override
  Seller read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Seller(
      name: fields[0] as String,
      id: fields[1] as String?,
      url: fields[2] as String,
      reviewsCount: fields[3] as double?,
      averageRating: fields[4] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Seller obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.url)
      ..writeByte(3)
      ..write(obj.reviewsCount)
      ..writeByte(4)
      ..write(obj.averageRating);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SellerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VariantDetailAdapter extends TypeAdapter<VariantDetail> {
  @override
  final int typeId = 8;

  @override
  VariantDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VariantDetail(
      name: fields[0] as String,
      thumbnail: fields[1] as String?,
      images: (fields[2] as List).cast<String>(),
      asin: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, VariantDetail obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.thumbnail)
      ..writeByte(2)
      ..write(obj.images)
      ..writeByte(3)
      ..write(obj.asin);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BestSellersRankAdapter extends TypeAdapter<BestSellersRank> {
  @override
  final int typeId = 9;

  @override
  BestSellersRank read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BestSellersRank(
      category: fields[0] as String,
      rank: fields[1] as int,
      url: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BestSellersRank obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.category)
      ..writeByte(1)
      ..write(obj.rank)
      ..writeByte(2)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BestSellersRankAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiReviewsSummaryImpl _$$AiReviewsSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$AiReviewsSummaryImpl(
      text: json['text'] as String,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AiReviewsSummaryImplToJson(
        _$AiReviewsSummaryImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'keywords': instance.keywords,
    };

_$AttributeImpl _$$AttributeImplFromJson(Map<String, dynamic> json) =>
    _$AttributeImpl(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AttributeImplToJson(_$AttributeImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$CategoryPageDataImpl _$$CategoryPageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryPageDataImpl(
      categoryUrl: json['categoryUrl'] as String,
      saleSummary: json['saleSummary'] as String?,
      isSponsored: json['isSponsored'] as bool,
    );

Map<String, dynamic> _$$CategoryPageDataImplToJson(
        _$CategoryPageDataImpl instance) =>
    <String, dynamic>{
      'categoryUrl': instance.categoryUrl,
      'saleSummary': instance.saleSummary,
      'isSponsored': instance.isSponsored,
    };

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      value: (json['value'] as num).toDouble(),
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': instance.currency,
    };

_$PriceRangeImpl _$$PriceRangeImplFromJson(Map<String, dynamic> json) =>
    _$PriceRangeImpl(
      min: Price.fromJson(json['min'] as Map<String, dynamic>),
      max: Price.fromJson(json['max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PriceRangeImplToJson(_$PriceRangeImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };

_$SellerImpl _$$SellerImplFromJson(Map<String, dynamic> json) => _$SellerImpl(
      name: json['name'] as String,
      id: json['id'] as String?,
      url: json['url'] as String,
      reviewsCount: (json['reviewsCount'] as num?)?.toDouble(),
      averageRating: (json['averageRating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SellerImplToJson(_$SellerImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'url': instance.url,
      'reviewsCount': instance.reviewsCount,
      'averageRating': instance.averageRating,
    };

_$VariantDetailImpl _$$VariantDetailImplFromJson(Map<String, dynamic> json) =>
    _$VariantDetailImpl(
      name: json['name'] as String,
      thumbnail: json['thumbnail'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      asin: json['asin'] as String,
    );

Map<String, dynamic> _$$VariantDetailImplToJson(_$VariantDetailImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'asin': instance.asin,
    };

_$BestSellersRankImpl _$$BestSellersRankImplFromJson(
        Map<String, dynamic> json) =>
    _$BestSellersRankImpl(
      category: json['category'] as String,
      rank: (json['rank'] as num).toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BestSellersRankImplToJson(
        _$BestSellersRankImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'rank': instance.rank,
      'url': instance.url,
    };
