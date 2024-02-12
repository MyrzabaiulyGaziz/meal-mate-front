import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/ingredient.dart';
import 'package:mealmate/models/recipe_instruction.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String title,
    required String image,
    int? servings,
    int? readyInMinutes,
    double? healthScore,
    double? pricePerServing,
    @Default([]) List<RecipeInstruction> analyzedInstructions,
    bool? cheap,
    bool? diaryFree,
    @Default([]) List<String> diets,
    bool? glutenFree,
    bool? ketogenic,
    bool? lowFodmap,
    bool? sustainable,
    bool? vegan,
    bool? vegetarian,
    bool? veryHealthy,
    bool? veryPopular,
    bool? whole30,
    @Default([]) List<String> dishTypes,
    @Default([]) List<Ingredient> extendedIngredients,
    String? summary
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) =>
      _$RecipeFromJson(json);
}