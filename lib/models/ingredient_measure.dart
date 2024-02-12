import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_measure.freezed.dart';
part 'ingredient_measure.g.dart';

double amountFromJson(json) => (json["measures"]["metric"]["amount"] as num).toDouble();
String unitFromJson(json) => json["measures"]["metric"]["unitLong"];

@freezed
class IngredientMeasure with _$IngredientMeasure {
  const factory IngredientMeasure({
    required double amount,
    required String unitLong,
  }) = _IngredientMeasure;

  factory IngredientMeasure.fromJson(Map<String, dynamic> json) =>
      _$IngredientMeasureFromJson(json);
}