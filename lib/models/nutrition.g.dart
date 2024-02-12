// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NutritionNutritionImpl _$$NutritionNutritionImplFromJson(
        Map<String, dynamic> json) =>
    _$NutritionNutritionImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      unit: json['unit'] as String,
    );

Map<String, dynamic> _$$NutritionNutritionImplToJson(
        _$NutritionNutritionImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'unit': instance.unit,
    };
