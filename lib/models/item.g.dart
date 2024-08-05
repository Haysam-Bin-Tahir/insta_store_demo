// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemAdapter extends TypeAdapter<Item> {
  @override
  final int typeId = 1;

  @override
  Item read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Item(
      title: fields[0] as String,
      url: fields[1] as String,
      asin: fields[2] as String,
      price: fields[3] as Price?,
      listPrice: fields[6] as Price?,
      brand: fields[7] as String,
      thumbnailImage: fields[8] as String,
      galleryThumbnails: (fields[9] as List).cast<String>(),
      highResolutionImages: (fields[10] as List).cast<String>(),
      description: fields[11] as String?,
      seller: fields[12] as Seller?,
    );
  }

  @override
  void write(BinaryWriter writer, Item obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.asin)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(6)
      ..write(obj.listPrice)
      ..writeByte(7)
      ..write(obj.brand)
      ..writeByte(8)
      ..write(obj.thumbnailImage)
      ..writeByte(9)
      ..write(obj.galleryThumbnails)
      ..writeByte(10)
      ..write(obj.highResolutionImages)
      ..writeByte(11)
      ..write(obj.description)
      ..writeByte(12)
      ..write(obj.seller);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      title: json['title'] as String,
      url: json['url'] as String,
      asin: json['asin'] as String,
      price: json['price'] == null
          ? null
          : Price.fromJson(json['price'] as Map<String, dynamic>),
      listPrice: json['listPrice'] == null
          ? null
          : Price.fromJson(json['listPrice'] as Map<String, dynamic>),
      brand: json['brand'] as String,
      thumbnailImage: json['thumbnailImage'] as String,
      galleryThumbnails: (json['galleryThumbnails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      highResolutionImages: (json['highResolutionImages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      seller: json['seller'] == null
          ? null
          : Seller.fromJson(json['seller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'asin': instance.asin,
      'price': instance.price,
      'listPrice': instance.listPrice,
      'brand': instance.brand,
      'thumbnailImage': instance.thumbnailImage,
      'galleryThumbnails': instance.galleryThumbnails,
      'highResolutionImages': instance.highResolutionImages,
      'description': instance.description,
      'seller': instance.seller,
    };
