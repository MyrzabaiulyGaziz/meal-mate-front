import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/nutrition.dart';

part 'ingredient_nutrition.freezed.dart';
part 'ingredient_nutrition.g.dart';

List<Nutrition> nutritionFromJson(json) => (json['nutrients'] as List<dynamic>?)
    ?.map(
        (e) => Nutrition.fromJson(e as Map<String, dynamic>))
    .toList() ??
    const [];

@freezed
class IngredientNutrition with _$IngredientNutrition {
  const factory IngredientNutrition({
    required int id,
    required String name,
    required double amount,
    @JsonKey(fromJson: nutritionFromJson) required List<Nutrition> nutrition,
  }) = _IngredientNutrition;

  factory IngredientNutrition.fromJson(Map<String, dynamic> json) =>
      _$IngredientNutritionFromJson(json);
}
