// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_measure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientMeasureImpl _$$IngredientMeasureImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientMeasureImpl(
      amount: (json['amount'] as num).toDouble(),
      unitLong: json['unitLong'] as String,
    );

Map<String, dynamic> _$$IngredientMeasureImplToJson(
        _$IngredientMeasureImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unitLong': instance.unitLong,
    };