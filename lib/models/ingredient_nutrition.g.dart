// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientNutritionImpl _$$IngredientNutritionImplFromJson(
        Map<String, dynamic> json) =>
    _$IngredientNutritionImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      nutrition: nutritionFromJson(json['nutrition']),
    );

Map<String, dynamic> _$$IngredientNutritionImplToJson(
        _$IngredientNutritionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'nutrition': instance.nutrition,
    };
