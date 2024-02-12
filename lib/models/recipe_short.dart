import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/recipe.dart';

part 'recipe_short.freezed.dart';
part 'recipe_short.g.dart';

@freezed
class RecipeShort with _$RecipeShort {
  const factory RecipeShort({
    required int id,
    required String title,
    required String image,
  }) = _RecipeShort;

  factory RecipeShort.fromJson(Map<String, dynamic> json) =>
      _$RecipeShortFromJson(json);
}

extension RecipeFromFull on RecipeShort {
  static RecipeShort fromFull(Recipe recipe) {
    return RecipeShort(id: recipe.id, title: recipe.title, image: recipe.image);
  }
}