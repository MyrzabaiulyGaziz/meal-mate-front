import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition.freezed.dart';
part 'nutrition.g.dart';

@freezed
class Nutrition with _$Nutrition {
  const factory Nutrition({
    required String name,
    required double amount,
    required String unit,
  }) = _NutritionNutrition;

  factory Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);
}