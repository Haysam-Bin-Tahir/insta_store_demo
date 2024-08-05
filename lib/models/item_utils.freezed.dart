// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_utils.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AiReviewsSummary _$AiReviewsSummaryFromJson(Map<String, dynamic> json) {
  return _AiReviewsSummary.fromJson(json);
}

/// @nodoc
mixin _$AiReviewsSummary {
  @HiveField(0)
  String get text => throw _privateConstructorUsedError;
  @HiveField(1)
  List<String> get keywords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiReviewsSummaryCopyWith<AiReviewsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiReviewsSummaryCopyWith<$Res> {
  factory $AiReviewsSummaryCopyWith(
          AiReviewsSummary value, $Res Function(AiReviewsSummary) then) =
      _$AiReviewsSummaryCopyWithImpl<$Res, AiReviewsSummary>;
  @useResult
  $Res call({@HiveField(0) String text, @HiveField(1) List<String> keywords});
}

/// @nodoc
class _$AiReviewsSummaryCopyWithImpl<$Res, $Val extends AiReviewsSummary>
    implements $AiReviewsSummaryCopyWith<$Res> {
  _$AiReviewsSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? keywords = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiReviewsSummaryImplCopyWith<$Res>
    implements $AiReviewsSummaryCopyWith<$Res> {
  factory _$$AiReviewsSummaryImplCopyWith(_$AiReviewsSummaryImpl value,
          $Res Function(_$AiReviewsSummaryImpl) then) =
      __$$AiReviewsSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String text, @HiveField(1) List<String> keywords});
}

/// @nodoc
class __$$AiReviewsSummaryImplCopyWithImpl<$Res>
    extends _$AiReviewsSummaryCopyWithImpl<$Res, _$AiReviewsSummaryImpl>
    implements _$$AiReviewsSummaryImplCopyWith<$Res> {
  __$$AiReviewsSummaryImplCopyWithImpl(_$AiReviewsSummaryImpl _value,
      $Res Function(_$AiReviewsSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? keywords = null,
  }) {
    return _then(_$AiReviewsSummaryImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AiReviewsSummaryImpl extends _AiReviewsSummary {
  _$AiReviewsSummaryImpl(
      {@HiveField(0) required this.text,
      @HiveField(1) required final List<String> keywords})
      : _keywords = keywords,
        super._();

  factory _$AiReviewsSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiReviewsSummaryImplFromJson(json);

  @override
  @HiveField(0)
  final String text;
  final List<String> _keywords;
  @override
  @HiveField(1)
  List<String> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  @override
  String toString() {
    return 'AiReviewsSummary(text: $text, keywords: $keywords)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiReviewsSummaryImpl &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, text, const DeepCollectionEquality().hash(_keywords));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiReviewsSummaryImplCopyWith<_$AiReviewsSummaryImpl> get copyWith =>
      __$$AiReviewsSummaryImplCopyWithImpl<_$AiReviewsSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AiReviewsSummaryImplToJson(
      this,
    );
  }
}

abstract class _AiReviewsSummary extends AiReviewsSummary {
  factory _AiReviewsSummary(
          {@HiveField(0) required final String text,
          @HiveField(1) required final List<String> keywords}) =
      _$AiReviewsSummaryImpl;
  _AiReviewsSummary._() : super._();

  factory _AiReviewsSummary.fromJson(Map<String, dynamic> json) =
      _$AiReviewsSummaryImpl.fromJson;

  @override
  @HiveField(0)
  String get text;
  @override
  @HiveField(1)
  List<String> get keywords;
  @override
  @JsonKey(ignore: true)
  _$$AiReviewsSummaryImplCopyWith<_$AiReviewsSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attribute _$AttributeFromJson(Map<String, dynamic> json) {
  return _Attribute.fromJson(json);
}

/// @nodoc
mixin _$Attribute {
  @HiveField(0)
  String get key => throw _privateConstructorUsedError;
  @HiveField(1)
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributeCopyWith<Attribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributeCopyWith<$Res> {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) then) =
      _$AttributeCopyWithImpl<$Res, Attribute>;
  @useResult
  $Res call({@HiveField(0) String key, @HiveField(1) String value});
}

/// @nodoc
class _$AttributeCopyWithImpl<$Res, $Val extends Attribute>
    implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttributeImplCopyWith<$Res>
    implements $AttributeCopyWith<$Res> {
  factory _$$AttributeImplCopyWith(
          _$AttributeImpl value, $Res Function(_$AttributeImpl) then) =
      __$$AttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String key, @HiveField(1) String value});
}

/// @nodoc
class __$$AttributeImplCopyWithImpl<$Res>
    extends _$AttributeCopyWithImpl<$Res, _$AttributeImpl>
    implements _$$AttributeImplCopyWith<$Res> {
  __$$AttributeImplCopyWithImpl(
      _$AttributeImpl _value, $Res Function(_$AttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$AttributeImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttributeImpl extends _Attribute {
  _$AttributeImpl(
      {@HiveField(0) required this.key, @HiveField(1) required this.value})
      : super._();

  factory _$AttributeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributeImplFromJson(json);

  @override
  @HiveField(0)
  final String key;
  @override
  @HiveField(1)
  final String value;

  @override
  String toString() {
    return 'Attribute(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributeImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      __$$AttributeImplCopyWithImpl<_$AttributeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributeImplToJson(
      this,
    );
  }
}

abstract class _Attribute extends Attribute {
  factory _Attribute(
      {@HiveField(0) required final String key,
      @HiveField(1) required final String value}) = _$AttributeImpl;
  _Attribute._() : super._();

  factory _Attribute.fromJson(Map<String, dynamic> json) =
      _$AttributeImpl.fromJson;

  @override
  @HiveField(0)
  String get key;
  @override
  @HiveField(1)
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AttributeImplCopyWith<_$AttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryPageData _$CategoryPageDataFromJson(Map<String, dynamic> json) {
  return _CategoryPageData.fromJson(json);
}

/// @nodoc
mixin _$CategoryPageData {
  @HiveField(0)
  String get categoryUrl => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get saleSummary => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get isSponsored => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryPageDataCopyWith<CategoryPageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPageDataCopyWith<$Res> {
  factory $CategoryPageDataCopyWith(
          CategoryPageData value, $Res Function(CategoryPageData) then) =
      _$CategoryPageDataCopyWithImpl<$Res, CategoryPageData>;
  @useResult
  $Res call(
      {@HiveField(0) String categoryUrl,
      @HiveField(1) String? saleSummary,
      @HiveField(2) bool isSponsored});
}

/// @nodoc
class _$CategoryPageDataCopyWithImpl<$Res, $Val extends CategoryPageData>
    implements $CategoryPageDataCopyWith<$Res> {
  _$CategoryPageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryUrl = null,
    Object? saleSummary = freezed,
    Object? isSponsored = null,
  }) {
    return _then(_value.copyWith(
      categoryUrl: null == categoryUrl
          ? _value.categoryUrl
          : categoryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      saleSummary: freezed == saleSummary
          ? _value.saleSummary
          : saleSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      isSponsored: null == isSponsored
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryPageDataImplCopyWith<$Res>
    implements $CategoryPageDataCopyWith<$Res> {
  factory _$$CategoryPageDataImplCopyWith(_$CategoryPageDataImpl value,
          $Res Function(_$CategoryPageDataImpl) then) =
      __$$CategoryPageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String categoryUrl,
      @HiveField(1) String? saleSummary,
      @HiveField(2) bool isSponsored});
}

/// @nodoc
class __$$CategoryPageDataImplCopyWithImpl<$Res>
    extends _$CategoryPageDataCopyWithImpl<$Res, _$CategoryPageDataImpl>
    implements _$$CategoryPageDataImplCopyWith<$Res> {
  __$$CategoryPageDataImplCopyWithImpl(_$CategoryPageDataImpl _value,
      $Res Function(_$CategoryPageDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryUrl = null,
    Object? saleSummary = freezed,
    Object? isSponsored = null,
  }) {
    return _then(_$CategoryPageDataImpl(
      categoryUrl: null == categoryUrl
          ? _value.categoryUrl
          : categoryUrl // ignore: cast_nullable_to_non_nullable
              as String,
      saleSummary: freezed == saleSummary
          ? _value.saleSummary
          : saleSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      isSponsored: null == isSponsored
          ? _value.isSponsored
          : isSponsored // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryPageDataImpl extends _CategoryPageData {
  _$CategoryPageDataImpl(
      {@HiveField(0) required this.categoryUrl,
      @HiveField(1) this.saleSummary,
      @HiveField(2) required this.isSponsored})
      : super._();

  factory _$CategoryPageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryPageDataImplFromJson(json);

  @override
  @HiveField(0)
  final String categoryUrl;
  @override
  @HiveField(1)
  final String? saleSummary;
  @override
  @HiveField(2)
  final bool isSponsored;

  @override
  String toString() {
    return 'CategoryPageData(categoryUrl: $categoryUrl, saleSummary: $saleSummary, isSponsored: $isSponsored)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryPageDataImpl &&
            (identical(other.categoryUrl, categoryUrl) ||
                other.categoryUrl == categoryUrl) &&
            (identical(other.saleSummary, saleSummary) ||
                other.saleSummary == saleSummary) &&
            (identical(other.isSponsored, isSponsored) ||
                other.isSponsored == isSponsored));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryUrl, saleSummary, isSponsored);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryPageDataImplCopyWith<_$CategoryPageDataImpl> get copyWith =>
      __$$CategoryPageDataImplCopyWithImpl<_$CategoryPageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryPageDataImplToJson(
      this,
    );
  }
}

abstract class _CategoryPageData extends CategoryPageData {
  factory _CategoryPageData(
      {@HiveField(0) required final String categoryUrl,
      @HiveField(1) final String? saleSummary,
      @HiveField(2) required final bool isSponsored}) = _$CategoryPageDataImpl;
  _CategoryPageData._() : super._();

  factory _CategoryPageData.fromJson(Map<String, dynamic> json) =
      _$CategoryPageDataImpl.fromJson;

  @override
  @HiveField(0)
  String get categoryUrl;
  @override
  @HiveField(1)
  String? get saleSummary;
  @override
  @HiveField(2)
  bool get isSponsored;
  @override
  @JsonKey(ignore: true)
  _$$CategoryPageDataImplCopyWith<_$CategoryPageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  @HiveField(0)
  double get value => throw _privateConstructorUsedError;
  @HiveField(1)
  String get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call({@HiveField(0) double value, @HiveField(1) String currency});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) double value, @HiveField(1) String currency});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? currency = null,
  }) {
    return _then(_$PriceImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl extends _Price {
  _$PriceImpl(
      {@HiveField(0) required this.value, @HiveField(1) required this.currency})
      : super._();

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  @HiveField(0)
  final double value;
  @override
  @HiveField(1)
  final String currency;

  @override
  String toString() {
    return 'Price(value: $value, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price extends Price {
  factory _Price(
      {@HiveField(0) required final double value,
      @HiveField(1) required final String currency}) = _$PriceImpl;
  _Price._() : super._();

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  @HiveField(0)
  double get value;
  @override
  @HiveField(1)
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceRange _$PriceRangeFromJson(Map<String, dynamic> json) {
  return _PriceRange.fromJson(json);
}

/// @nodoc
mixin _$PriceRange {
  @HiveField(0)
  Price get min => throw _privateConstructorUsedError;
  @HiveField(1)
  Price get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PriceRangeCopyWith<PriceRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceRangeCopyWith<$Res> {
  factory $PriceRangeCopyWith(
          PriceRange value, $Res Function(PriceRange) then) =
      _$PriceRangeCopyWithImpl<$Res, PriceRange>;
  @useResult
  $Res call({@HiveField(0) Price min, @HiveField(1) Price max});

  $PriceCopyWith<$Res> get min;
  $PriceCopyWith<$Res> get max;
}

/// @nodoc
class _$PriceRangeCopyWithImpl<$Res, $Val extends PriceRange>
    implements $PriceRangeCopyWith<$Res> {
  _$PriceRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as Price,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get min {
    return $PriceCopyWith<$Res>(_value.min, (value) {
      return _then(_value.copyWith(min: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get max {
    return $PriceCopyWith<$Res>(_value.max, (value) {
      return _then(_value.copyWith(max: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PriceRangeImplCopyWith<$Res>
    implements $PriceRangeCopyWith<$Res> {
  factory _$$PriceRangeImplCopyWith(
          _$PriceRangeImpl value, $Res Function(_$PriceRangeImpl) then) =
      __$$PriceRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) Price min, @HiveField(1) Price max});

  @override
  $PriceCopyWith<$Res> get min;
  @override
  $PriceCopyWith<$Res> get max;
}

/// @nodoc
class __$$PriceRangeImplCopyWithImpl<$Res>
    extends _$PriceRangeCopyWithImpl<$Res, _$PriceRangeImpl>
    implements _$$PriceRangeImplCopyWith<$Res> {
  __$$PriceRangeImplCopyWithImpl(
      _$PriceRangeImpl _value, $Res Function(_$PriceRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
  }) {
    return _then(_$PriceRangeImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as Price,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceRangeImpl extends _PriceRange {
  _$PriceRangeImpl(
      {@HiveField(0) required this.min, @HiveField(1) required this.max})
      : super._();

  factory _$PriceRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceRangeImplFromJson(json);

  @override
  @HiveField(0)
  final Price min;
  @override
  @HiveField(1)
  final Price max;

  @override
  String toString() {
    return 'PriceRange(min: $min, max: $max)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceRangeImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, max);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      __$$PriceRangeImplCopyWithImpl<_$PriceRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceRangeImplToJson(
      this,
    );
  }
}

abstract class _PriceRange extends PriceRange {
  factory _PriceRange(
      {@HiveField(0) required final Price min,
      @HiveField(1) required final Price max}) = _$PriceRangeImpl;
  _PriceRange._() : super._();

  factory _PriceRange.fromJson(Map<String, dynamic> json) =
      _$PriceRangeImpl.fromJson;

  @override
  @HiveField(0)
  Price get min;
  @override
  @HiveField(1)
  Price get max;
  @override
  @JsonKey(ignore: true)
  _$$PriceRangeImplCopyWith<_$PriceRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seller _$SellerFromJson(Map<String, dynamic> json) {
  return _Seller.fromJson(json);
}

/// @nodoc
mixin _$Seller {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get reviewsCount => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get averageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerCopyWith<Seller> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerCopyWith<$Res> {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) then) =
      _$SellerCopyWithImpl<$Res, Seller>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? id,
      @HiveField(2) String url,
      @HiveField(3) double? reviewsCount,
      @HiveField(4) double? averageRating});
}

/// @nodoc
class _$SellerCopyWithImpl<$Res, $Val extends Seller>
    implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? url = null,
    Object? reviewsCount = freezed,
    Object? averageRating = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as double?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SellerImplCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$$SellerImplCopyWith(
          _$SellerImpl value, $Res Function(_$SellerImpl) then) =
      __$$SellerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? id,
      @HiveField(2) String url,
      @HiveField(3) double? reviewsCount,
      @HiveField(4) double? averageRating});
}

/// @nodoc
class __$$SellerImplCopyWithImpl<$Res>
    extends _$SellerCopyWithImpl<$Res, _$SellerImpl>
    implements _$$SellerImplCopyWith<$Res> {
  __$$SellerImplCopyWithImpl(
      _$SellerImpl _value, $Res Function(_$SellerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? url = null,
    Object? reviewsCount = freezed,
    Object? averageRating = freezed,
  }) {
    return _then(_$SellerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as double?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SellerImpl extends _Seller {
  _$SellerImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) this.id,
      @HiveField(2) required this.url,
      @HiveField(3) this.reviewsCount,
      @HiveField(4) this.averageRating})
      : super._();

  factory _$SellerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SellerImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String? id;
  @override
  @HiveField(2)
  final String url;
  @override
  @HiveField(3)
  final double? reviewsCount;
  @override
  @HiveField(4)
  final double? averageRating;

  @override
  String toString() {
    return 'Seller(name: $name, id: $id, url: $url, reviewsCount: $reviewsCount, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellerImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, id, url, reviewsCount, averageRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SellerImplCopyWith<_$SellerImpl> get copyWith =>
      __$$SellerImplCopyWithImpl<_$SellerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SellerImplToJson(
      this,
    );
  }
}

abstract class _Seller extends Seller {
  factory _Seller(
      {@HiveField(0) required final String name,
      @HiveField(1) final String? id,
      @HiveField(2) required final String url,
      @HiveField(3) final double? reviewsCount,
      @HiveField(4) final double? averageRating}) = _$SellerImpl;
  _Seller._() : super._();

  factory _Seller.fromJson(Map<String, dynamic> json) = _$SellerImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String? get id;
  @override
  @HiveField(2)
  String get url;
  @override
  @HiveField(3)
  double? get reviewsCount;
  @override
  @HiveField(4)
  double? get averageRating;
  @override
  @JsonKey(ignore: true)
  _$$SellerImplCopyWith<_$SellerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantDetail _$VariantDetailFromJson(Map<String, dynamic> json) {
  return _VariantDetail.fromJson(json);
}

/// @nodoc
mixin _$VariantDetail {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get thumbnail => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get images => throw _privateConstructorUsedError;
  @HiveField(3)
  String get asin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantDetailCopyWith<VariantDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantDetailCopyWith<$Res> {
  factory $VariantDetailCopyWith(
          VariantDetail value, $Res Function(VariantDetail) then) =
      _$VariantDetailCopyWithImpl<$Res, VariantDetail>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? thumbnail,
      @HiveField(2) List<String> images,
      @HiveField(3) String asin});
}

/// @nodoc
class _$VariantDetailCopyWithImpl<$Res, $Val extends VariantDetail>
    implements $VariantDetailCopyWith<$Res> {
  _$VariantDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnail = freezed,
    Object? images = null,
    Object? asin = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantDetailImplCopyWith<$Res>
    implements $VariantDetailCopyWith<$Res> {
  factory _$$VariantDetailImplCopyWith(
          _$VariantDetailImpl value, $Res Function(_$VariantDetailImpl) then) =
      __$$VariantDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? thumbnail,
      @HiveField(2) List<String> images,
      @HiveField(3) String asin});
}

/// @nodoc
class __$$VariantDetailImplCopyWithImpl<$Res>
    extends _$VariantDetailCopyWithImpl<$Res, _$VariantDetailImpl>
    implements _$$VariantDetailImplCopyWith<$Res> {
  __$$VariantDetailImplCopyWithImpl(
      _$VariantDetailImpl _value, $Res Function(_$VariantDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? thumbnail = freezed,
    Object? images = null,
    Object? asin = null,
  }) {
    return _then(_$VariantDetailImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      asin: null == asin
          ? _value.asin
          : asin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariantDetailImpl extends _VariantDetail {
  _$VariantDetailImpl(
      {@HiveField(0) required this.name,
      @HiveField(1) this.thumbnail,
      @HiveField(2) required final List<String> images,
      @HiveField(3) required this.asin})
      : _images = images,
        super._();

  factory _$VariantDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantDetailImplFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String? thumbnail;
  final List<String> _images;
  @override
  @HiveField(2)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @HiveField(3)
  final String asin;

  @override
  String toString() {
    return 'VariantDetail(name: $name, thumbnail: $thumbnail, images: $images, asin: $asin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantDetailImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.asin, asin) || other.asin == asin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, thumbnail,
      const DeepCollectionEquality().hash(_images), asin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantDetailImplCopyWith<_$VariantDetailImpl> get copyWith =>
      __$$VariantDetailImplCopyWithImpl<_$VariantDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantDetailImplToJson(
      this,
    );
  }
}

abstract class _VariantDetail extends VariantDetail {
  factory _VariantDetail(
      {@HiveField(0) required final String name,
      @HiveField(1) final String? thumbnail,
      @HiveField(2) required final List<String> images,
      @HiveField(3) required final String asin}) = _$VariantDetailImpl;
  _VariantDetail._() : super._();

  factory _VariantDetail.fromJson(Map<String, dynamic> json) =
      _$VariantDetailImpl.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String? get thumbnail;
  @override
  @HiveField(2)
  List<String> get images;
  @override
  @HiveField(3)
  String get asin;
  @override
  @JsonKey(ignore: true)
  _$$VariantDetailImplCopyWith<_$VariantDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BestSellersRank _$BestSellersRankFromJson(Map<String, dynamic> json) {
  return _BestSellersRank.fromJson(json);
}

/// @nodoc
mixin _$BestSellersRank {
  @HiveField(0)
  String get category => throw _privateConstructorUsedError;
  @HiveField(1)
  int get rank => throw _privateConstructorUsedError;
  @HiveField(2)
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellersRankCopyWith<BestSellersRank> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellersRankCopyWith<$Res> {
  factory $BestSellersRankCopyWith(
          BestSellersRank value, $Res Function(BestSellersRank) then) =
      _$BestSellersRankCopyWithImpl<$Res, BestSellersRank>;
  @useResult
  $Res call(
      {@HiveField(0) String category,
      @HiveField(1) int rank,
      @HiveField(2) String url});
}

/// @nodoc
class _$BestSellersRankCopyWithImpl<$Res, $Val extends BestSellersRank>
    implements $BestSellersRankCopyWith<$Res> {
  _$BestSellersRankCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? rank = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellersRankImplCopyWith<$Res>
    implements $BestSellersRankCopyWith<$Res> {
  factory _$$BestSellersRankImplCopyWith(_$BestSellersRankImpl value,
          $Res Function(_$BestSellersRankImpl) then) =
      __$$BestSellersRankImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String category,
      @HiveField(1) int rank,
      @HiveField(2) String url});
}

/// @nodoc
class __$$BestSellersRankImplCopyWithImpl<$Res>
    extends _$BestSellersRankCopyWithImpl<$Res, _$BestSellersRankImpl>
    implements _$$BestSellersRankImplCopyWith<$Res> {
  __$$BestSellersRankImplCopyWithImpl(
      _$BestSellersRankImpl _value, $Res Function(_$BestSellersRankImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? rank = null,
    Object? url = null,
  }) {
    return _then(_$BestSellersRankImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestSellersRankImpl extends _BestSellersRank {
  _$BestSellersRankImpl(
      {@HiveField(0) required this.category,
      @HiveField(1) required this.rank,
      @HiveField(2) required this.url})
      : super._();

  factory _$BestSellersRankImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestSellersRankImplFromJson(json);

  @override
  @HiveField(0)
  final String category;
  @override
  @HiveField(1)
  final int rank;
  @override
  @HiveField(2)
  final String url;

  @override
  String toString() {
    return 'BestSellersRank(category: $category, rank: $rank, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellersRankImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, rank, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellersRankImplCopyWith<_$BestSellersRankImpl> get copyWith =>
      __$$BestSellersRankImplCopyWithImpl<_$BestSellersRankImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestSellersRankImplToJson(
      this,
    );
  }
}

abstract class _BestSellersRank extends BestSellersRank {
  factory _BestSellersRank(
      {@HiveField(0) required final String category,
      @HiveField(1) required final int rank,
      @HiveField(2) required final String url}) = _$BestSellersRankImpl;
  _BestSellersRank._() : super._();

  factory _BestSellersRank.fromJson(Map<String, dynamic> json) =
      _$BestSellersRankImpl.fromJson;

  @override
  @HiveField(0)
  String get category;
  @override
  @HiveField(1)
  int get rank;
  @override
  @HiveField(2)
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$BestSellersRankImplCopyWith<_$BestSellersRankImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
