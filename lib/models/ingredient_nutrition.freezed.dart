// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient_nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IngredientNutrition _$IngredientNutritionFromJson(Map<String, dynamic> json) {
  return _IngredientNutrition.fromJson(json);
}

/// @nodoc
mixin _$IngredientNutrition {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(fromJson: nutritionFromJson)
  List<Nutrition> get nutrition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientNutritionCopyWith<IngredientNutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientNutritionCopyWith<$Res> {
  factory $IngredientNutritionCopyWith(
          IngredientNutrition value, $Res Function(IngredientNutrition) then) =
      _$IngredientNutritionCopyWithImpl<$Res, IngredientNutrition>;
  @useResult
  $Res call(
      {int id,
      String name,
      double amount,
      @JsonKey(fromJson: nutritionFromJson) List<Nutrition> nutrition});
}

/// @nodoc
class _$IngredientNutritionCopyWithImpl<$Res, $Val extends IngredientNutrition>
    implements $IngredientNutritionCopyWith<$Res> {
  _$IngredientNutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
    Object? nutrition = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as List<Nutrition>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IngredientNutritionImplCopyWith<$Res>
    implements $IngredientNutritionCopyWith<$Res> {
  factory _$$IngredientNutritionImplCopyWith(_$IngredientNutritionImpl value,
          $Res Function(_$IngredientNutritionImpl) then) =
      __$$IngredientNutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double amount,
      @JsonKey(fromJson: nutritionFromJson) List<Nutrition> nutrition});
}

/// @nodoc
class __$$IngredientNutritionImplCopyWithImpl<$Res>
    extends _$IngredientNutritionCopyWithImpl<$Res, _$IngredientNutritionImpl>
    implements _$$IngredientNutritionImplCopyWith<$Res> {
  __$$IngredientNutritionImplCopyWithImpl(_$IngredientNutritionImpl _value,
      $Res Function(_$IngredientNutritionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
    Object? nutrition = null,
  }) {
    return _then(_$IngredientNutritionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      nutrition: null == nutrition
          ? _value._nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as List<Nutrition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientNutritionImpl implements _IngredientNutrition {
  const _$IngredientNutritionImpl(
      {required this.id,
      required this.name,
      required this.amount,
      @JsonKey(fromJson: nutritionFromJson)
      required final List<Nutrition> nutrition})
      : _nutrition = nutrition;

  factory _$IngredientNutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientNutritionImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double amount;
  final List<Nutrition> _nutrition;
  @override
  @JsonKey(fromJson: nutritionFromJson)
  List<Nutrition> get nutrition {
    if (_nutrition is EqualUnmodifiableListView) return _nutrition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrition);
  }

  @override
  String toString() {
    return 'IngredientNutrition(id: $id, name: $name, amount: $amount, nutrition: $nutrition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientNutritionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._nutrition, _nutrition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount,
      const DeepCollectionEquality().hash(_nutrition));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientNutritionImplCopyWith<_$IngredientNutritionImpl> get copyWith =>
      __$$IngredientNutritionImplCopyWithImpl<_$IngredientNutritionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientNutritionImplToJson(
      this,
    );
  }
}

abstract class _IngredientNutrition implements IngredientNutrition {
  const factory _IngredientNutrition(
      {required final int id,
      required final String name,
      required final double amount,
      @JsonKey(fromJson: nutritionFromJson)
      required final List<Nutrition> nutrition}) = _$IngredientNutritionImpl;

  factory _IngredientNutrition.fromJson(Map<String, dynamic> json) =
      _$IngredientNutritionImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get amount;
  @override
  @JsonKey(fromJson: nutritionFromJson)
  List<Nutrition> get nutrition;
  @override
  @JsonKey(ignore: true)
  _$$IngredientNutritionImplCopyWith<_$IngredientNutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
