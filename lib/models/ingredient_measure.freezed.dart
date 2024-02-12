// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_measure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientMeasure _$IngredientMeasureFromJson(Map<String, dynamic> json) {
  return _IngredientMeasure.fromJson(json);
}

/// @nodoc
mixin _$IngredientMeasure {
  double get amount => throw _privateConstructorUsedError;
  String get unitLong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientMeasureCopyWith<IngredientMeasure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientMeasureCopyWith<$Res> {
  factory $IngredientMeasureCopyWith(
          IngredientMeasure value, $Res Function(IngredientMeasure) then) =
      _$IngredientMeasureCopyWithImpl<$Res, IngredientMeasure>;
  @useResult
  $Res call({double amount, String unitLong});
}

/// @nodoc
class _$IngredientMeasureCopyWithImpl<$Res, $Val extends IngredientMeasure>
    implements $IngredientMeasureCopyWith<$Res> {
  _$IngredientMeasureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unitLong = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitLong: null == unitLong
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientMeasureImplCopyWith<$Res>
    implements $IngredientMeasureCopyWith<$Res> {
  factory _$$IngredientMeasureImplCopyWith(_$IngredientMeasureImpl value,
          $Res Function(_$IngredientMeasureImpl) then) =
      __$$IngredientMeasureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, String unitLong});
}

/// @nodoc
class __$$IngredientMeasureImplCopyWithImpl<$Res>
    extends _$IngredientMeasureCopyWithImpl<$Res, _$IngredientMeasureImpl>
    implements _$$IngredientMeasureImplCopyWith<$Res> {
  __$$IngredientMeasureImplCopyWithImpl(_$IngredientMeasureImpl _value,
      $Res Function(_$IngredientMeasureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unitLong = null,
  }) {
    return _then(_$IngredientMeasureImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitLong: null == unitLong
          ? _value.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientMeasureImpl implements _IngredientMeasure {
  const _$IngredientMeasureImpl({required this.amount, required this.unitLong});

  factory _$IngredientMeasureImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientMeasureImplFromJson(json);

  @override
  final double amount;
  @override
  final String unitLong;

  @override
  String toString() {
    return 'IngredientMeasure(amount: $amount, unitLong: $unitLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientMeasureImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitLong, unitLong) ||
                other.unitLong == unitLong));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unitLong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientMeasureImplCopyWith<_$IngredientMeasureImpl> get copyWith =>
      __$$IngredientMeasureImplCopyWithImpl<_$IngredientMeasureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientMeasureImplToJson(
      this,
    );
  }
}

abstract class _IngredientMeasure implements IngredientMeasure {
  const factory _IngredientMeasure(
      {required final double amount,
      required final String unitLong}) = _$IngredientMeasureImpl;

  factory _IngredientMeasure.fromJson(Map<String, dynamic> json) =
      _$IngredientMeasureImpl.fromJson;

  @override
  double get amount;
  @override
  String get unitLong;
  @override
  @JsonKey(ignore: true)
  _$$IngredientMeasureImplCopyWith<_$IngredientMeasureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
