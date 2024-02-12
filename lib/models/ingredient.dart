import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/ingredient_measure.dart';

part 'ingredient.freezed.dart';

part 'ingredient.g.dart';

IngredientMeasure measuresFromJson(json) => IngredientMeasure(
      amount: json["metric"]["amount"],
      unitLong: json["metric"]["unitLong"],
    );

@freezed
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required int id,
    required String nameClean,
    @JsonKey(fromJson: measuresFromJson) required IngredientMeasure measures,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
