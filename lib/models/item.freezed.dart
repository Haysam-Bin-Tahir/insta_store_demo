// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get url => throw _privateConstructorUsedError;
  @HiveField(2)
  String get asin => throw _privateConstructorUsedError;
  @HiveField(3)
  Price? get price => throw _privateConstructorUsedError;
  @HiveField(6)
  Price? get listPrice => throw _privateConstructorUsedError;
  @HiveField(7)
  String get brand => throw _privateConstructorUsedError;
  @HiveField(8)
  String get thumbnailImage => throw _privateConstructorUsedError;
  @HiveField(9)
  List<String> get galleryThumbnails => throw _privateConstructorUsedError;
  @HiveField(10)
  List<String> get highResolutionImages => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(12)
  Seller? get seller => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String url,
      @HiveField(2) String asin,
      @HiveField(3) Price? price,
      @HiveField(6) Price? listPrice,
      @HiveField(7) String brand,
      @HiveField(8) String thumbnailImage,
      @HiveField(9) List<String> galleryThumbnails,
      @HiveField(10) List<String> highResolutionImages,
      @HiveField(11) String? description,
      @HiveField(12) Seller? seller});

  $PriceCopyWith<$Res>? get price;
  $PriceCopyWith<$Res>? get listPrice;
  $SellerCopyWith<$Res>? get seller;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? asin = null,
    Object? price = freezed,
    Object? listPrice = freezed,
    Object? brand = null,
    Object? thumbnailImage = null,
    Object? galleryThumbnails = null,
    Object? highResolutionImages = null,
    Object? description = freezed,
    Object? seller = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as Price?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      galleryThumbnails: null == galleryThumbnails
          ? _value.galleryThumbnails
          : galleryThumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highResolutionImages: null == highResolutionImages
          ? _value.highResolutionImages
          : highResolutionImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res>? get listPrice {
    if (_value.listPrice == null) {
      return null;
    }

    return $PriceCopyWith<$Res>(_value.listPrice!, (value) {
      return _then(_value.copyWith(listPrice: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SellerCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $SellerCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String title,
      @HiveField(1) String url,
      @HiveField(2) String asin,
      @HiveField(3) Price? price,
      @HiveField(6) Price? listPrice,
      @HiveField(7) String brand,
      @HiveField(8) String thumbnailImage,
      @HiveField(9) List<String> galleryThumbnails,
      @HiveField(10) List<String> highResolutionImages,
      @HiveField(11) String? description,
      @HiveField(12) Seller? seller});

  @override
  $PriceCopyWith<$Res>? get price;
  @override
  $PriceCopyWith<$Res>? get listPrice;
  @override
  $SellerCopyWith<$Res>? get seller;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? asin = null,
    Object? price = freezed,
    Object? listPrice = freezed,
    Object? brand = null,
    Object? thumbnailImage = null,
    Object? galleryThumbnails = null,
    Object? highResolutionImages = null,
    Object? description = freezed,
    Object? seller = freezed,
  }) {
    return _then(_$ItemImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price?,
      listPrice: freezed == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as Price?,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: null == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String,
      galleryThumbnails: null == galleryThumbnails
          ? _value._galleryThumbnails
          : galleryThumbnails // ignore: cast_nullable_to_non_nullable
              as List<String>,
      highResolutionImages: null == highResolutionImages
          ? _value._highResolutionImages
          : highResolutionImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl extends _Item {
  _$ItemImpl(
      {@HiveField(0) required this.title,
      @HiveField(1) required this.url,
      @HiveField(2) required this.asin,
      @HiveField(3) this.price,
      @HiveField(6) this.listPrice,
      @HiveField(7) required this.brand,
      @HiveField(8) required this.thumbnailImage,
      @HiveField(9) required final List<String> galleryThumbnails,
      @HiveField(10) required final List<String> highResolutionImages,
      @HiveField(11) this.description,
      @HiveField(12) this.seller})
      : _galleryThumbnails = galleryThumbnails,
        _highResolutionImages = highResolutionImages,
        super._();

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String url;
  @override
  @HiveField(2)
  final String asin;
  @override
  @HiveField(3)
  final Price? price;
  @override
  @HiveField(6)
  final Price? listPrice;
  @override
  @HiveField(7)
  final String brand;
  @override
  @HiveField(8)
  final String thumbnailImage;
  final List<String> _galleryThumbnails;
  @override
  @HiveField(9)
  List<String> get galleryThumbnails {
    if (_galleryThumbnails is EqualUnmodifiableListView)
      return _galleryThumbnails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleryThumbnails);
  }

  final List<String> _highResolutionImages;
  @override
  @HiveField(10)
  List<String> get highResolutionImages {
    if (_highResolutionImages is EqualUnmodifiableListView)
      return _highResolutionImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highResolutionImages);
  }

  @override
  @HiveField(11)
  final String? description;
  @override
  @HiveField(12)
  final Seller? seller;

  @override
  String toString() {
    return 'Item(title: $title, url: $url, asin: $asin, price: $price, listPrice: $listPrice, brand: $brand, thumbnailImage: $thumbnailImage, galleryThumbnails: $galleryThumbnails, highResolutionImages: $highResolutionImages, description: $description, seller: $seller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.asin, asin) || other.asin == asin) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            const DeepCollectionEquality()
                .equals(other._galleryThumbnails, _galleryThumbnails) &&
            const DeepCollectionEquality()
                .equals(other._highResolutionImages, _highResolutionImages) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.seller, seller) || other.seller == seller));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      url,
      asin,
      price,
      listPrice,
      brand,
      thumbnailImage,
      const DeepCollectionEquality().hash(_galleryThumbnails),
      const DeepCollectionEquality().hash(_highResolutionImages),
      description,
      seller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  factory _Item(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String url,
      @HiveField(2) required final String asin,
      @HiveField(3) final Price? price,
      @HiveField(6) final Price? listPrice,
      @HiveField(7) required final String brand,
      @HiveField(8) required final String thumbnailImage,
      @HiveField(9) required final List<String> galleryThumbnails,
      @HiveField(10) required final List<String> highResolutionImages,
      @HiveField(11) final String? description,
      @HiveField(12) final Seller? seller}) = _$ItemImpl;
  _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get url;
  @override
  @HiveField(2)
  String get asin;
  @override
  @HiveField(3)
  Price? get price;
  @override
  @HiveField(6)
  Price? get listPrice;
  @override
  @HiveField(7)
  String get brand;
  @override
  @HiveField(8)
  String get thumbnailImage;
  @override
  @HiveField(9)
  List<String> get galleryThumbnails;
  @override
  @HiveField(10)
  List<String> get highResolutionImages;
  @override
  @HiveField(11)
  String? get description;
  @override
  @HiveField(12)
  Seller? get seller;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
