// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_short.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeShort _$RecipeShortFromJson(Map<String, dynamic> json) {
  return _RecipeShort.fromJson(json);
}

/// @nodoc
mixin _$RecipeShort {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeShortCopyWith<RecipeShort> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeShortCopyWith<$Res> {
  factory $RecipeShortCopyWith(
          RecipeShort value, $Res Function(RecipeShort) then) =
      _$RecipeShortCopyWithImpl<$Res, RecipeShort>;
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class _$RecipeShortCopyWithImpl<$Res, $Val extends RecipeShort>
    implements $RecipeShortCopyWith<$Res> {
  _$RecipeShortCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeShortImplCopyWith<$Res>
    implements $RecipeShortCopyWith<$Res> {
  factory _$$RecipeShortImplCopyWith(
          _$RecipeShortImpl value, $Res Function(_$RecipeShortImpl) then) =
      __$$RecipeShortImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String image});
}

/// @nodoc
class __$$RecipeShortImplCopyWithImpl<$Res>
    extends _$RecipeShortCopyWithImpl<$Res, _$RecipeShortImpl>
    implements _$$RecipeShortImplCopyWith<$Res> {
  __$$RecipeShortImplCopyWithImpl(
      _$RecipeShortImpl _value, $Res Function(_$RecipeShortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$RecipeShortImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeShortImpl implements _RecipeShort {
  const _$RecipeShortImpl(
      {required this.id, required this.title, required this.image});

  factory _$RecipeShortImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeShortImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'RecipeShort(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeShortImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeShortImplCopyWith<_$RecipeShortImpl> get copyWith =>
      __$$RecipeShortImplCopyWithImpl<_$RecipeShortImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeShortImplToJson(
      this,
    );
  }
}

abstract class _RecipeShort implements RecipeShort {
  const factory _RecipeShort(
      {required final int id,
      required final String title,
      required final String image}) = _$RecipeShortImpl;

  factory _RecipeShort.fromJson(Map<String, dynamic> json) =
      _$RecipeShortImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$RecipeShortImplCopyWith<_$RecipeShortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
