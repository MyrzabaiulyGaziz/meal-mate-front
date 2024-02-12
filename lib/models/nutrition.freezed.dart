// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Nutrition _$NutritionFromJson(Map<String, dynamic> json) {
  return _NutritionNutrition.fromJson(json);
}

/// @nodoc
mixin _$Nutrition {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutritionCopyWith<Nutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionCopyWith<$Res> {
  factory $NutritionCopyWith(Nutrition value, $Res Function(Nutrition) then) =
      _$NutritionCopyWithImpl<$Res, Nutrition>;
  @useResult
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class _$NutritionCopyWithImpl<$Res, $Val extends Nutrition>
    implements $NutritionCopyWith<$Res> {
  _$NutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutritionNutritionImplCopyWith<$Res>
    implements $NutritionCopyWith<$Res> {
  factory _$$NutritionNutritionImplCopyWith(_$NutritionNutritionImpl value,
          $Res Function(_$NutritionNutritionImpl) then) =
      __$$NutritionNutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double amount, String unit});
}

/// @nodoc
class __$$NutritionNutritionImplCopyWithImpl<$Res>
    extends _$NutritionCopyWithImpl<$Res, _$NutritionNutritionImpl>
    implements _$$NutritionNutritionImplCopyWith<$Res> {
  __$$NutritionNutritionImplCopyWithImpl(_$NutritionNutritionImpl _value,
      $Res Function(_$NutritionNutritionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$NutritionNutritionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutritionNutritionImpl implements _NutritionNutrition {
  const _$NutritionNutritionImpl(
      {required this.name, required this.amount, required this.unit});

  factory _$NutritionNutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionNutritionImplFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final String unit;

  @override
  String toString() {
    return 'Nutrition(name: $name, amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionNutritionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionNutritionImplCopyWith<_$NutritionNutritionImpl> get copyWith =>
      __$$NutritionNutritionImplCopyWithImpl<_$NutritionNutritionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionNutritionImplToJson(
      this,
    );
  }
}

abstract class _NutritionNutrition implements Nutrition {
  const factory _NutritionNutrition(
      {required final String name,
      required final double amount,
      required final String unit}) = _$NutritionNutritionImpl;

  factory _NutritionNutrition.fromJson(Map<String, dynamic> json) =
      _$NutritionNutritionImpl.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  String get unit;
  @override
  @JsonKey(ignore: true)
  _$$NutritionNutritionImplCopyWith<_$NutritionNutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
