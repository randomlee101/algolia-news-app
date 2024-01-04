// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String? get author => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call({String? author, String? title, String? url});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsModelImplCopyWith<$Res>
    implements $NewsModelCopyWith<$Res> {
  factory _$$NewsModelImplCopyWith(
          _$NewsModelImpl value, $Res Function(_$NewsModelImpl) then) =
      __$$NewsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? author, String? title, String? url});
}

/// @nodoc
class __$$NewsModelImplCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$NewsModelImpl>
    implements _$$NewsModelImplCopyWith<$Res> {
  __$$NewsModelImplCopyWithImpl(
      _$NewsModelImpl _value, $Res Function(_$NewsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$NewsModelImpl(
      freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsModelImpl implements _NewsModel {
  _$NewsModelImpl(this.author, this.title, this.url);

  factory _$NewsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsModelImplFromJson(json);

  @override
  final String? author;
  @override
  final String? title;
  @override
  final String? url;

  @override
  String toString() {
    return 'NewsModel(author: $author, title: $title, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsModelImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      __$$NewsModelImplCopyWithImpl<_$NewsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsModelImplToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  factory _NewsModel(
          final String? author, final String? title, final String? url) =
      _$NewsModelImpl;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$NewsModelImpl.fromJson;

  @override
  String? get author;
  @override
  String? get title;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$NewsModelImplCopyWith<_$NewsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitModel _$HitModelFromJson(Map<String, dynamic> json) {
  return _HitModel.fromJson(json);
}

/// @nodoc
mixin _$HitModel {
  List<NewsModel?>? get hits => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitModelCopyWith<HitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitModelCopyWith<$Res> {
  factory $HitModelCopyWith(HitModel value, $Res Function(HitModel) then) =
      _$HitModelCopyWithImpl<$Res, HitModel>;
  @useResult
  $Res call({List<NewsModel?>? hits});
}

/// @nodoc
class _$HitModelCopyWithImpl<$Res, $Val extends HitModel>
    implements $HitModelCopyWith<$Res> {
  _$HitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = freezed,
  }) {
    return _then(_value.copyWith(
      hits: freezed == hits
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<NewsModel?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitModelImplCopyWith<$Res>
    implements $HitModelCopyWith<$Res> {
  factory _$$HitModelImplCopyWith(
          _$HitModelImpl value, $Res Function(_$HitModelImpl) then) =
      __$$HitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NewsModel?>? hits});
}

/// @nodoc
class __$$HitModelImplCopyWithImpl<$Res>
    extends _$HitModelCopyWithImpl<$Res, _$HitModelImpl>
    implements _$$HitModelImplCopyWith<$Res> {
  __$$HitModelImplCopyWithImpl(
      _$HitModelImpl _value, $Res Function(_$HitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hits = freezed,
  }) {
    return _then(_$HitModelImpl(
      freezed == hits
          ? _value._hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<NewsModel?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitModelImpl implements _HitModel {
  _$HitModelImpl(final List<NewsModel?>? hits) : _hits = hits;

  factory _$HitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitModelImplFromJson(json);

  final List<NewsModel?>? _hits;
  @override
  List<NewsModel?>? get hits {
    final value = _hits;
    if (value == null) return null;
    if (_hits is EqualUnmodifiableListView) return _hits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HitModel(hits: $hits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitModelImpl &&
            const DeepCollectionEquality().equals(other._hits, _hits));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hits));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitModelImplCopyWith<_$HitModelImpl> get copyWith =>
      __$$HitModelImplCopyWithImpl<_$HitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitModelImplToJson(
      this,
    );
  }
}

abstract class _HitModel implements HitModel {
  factory _HitModel(final List<NewsModel?>? hits) = _$HitModelImpl;

  factory _HitModel.fromJson(Map<String, dynamic> json) =
      _$HitModelImpl.fromJson;

  @override
  List<NewsModel?>? get hits;
  @override
  @JsonKey(ignore: true)
  _$$HitModelImplCopyWith<_$HitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
