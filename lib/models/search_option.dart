import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/enums/cuisine.dart';
import 'package:mealmate/models/enums/diet.dart';
import 'package:mealmate/models/enums/meal_type.dart';

part 'search_option.freezed.dart';

part 'search_option.g.dart';

@freezed
class SearchOption with _$SearchOption {
  const factory SearchOption({
    String? query,
    Cuisine? cuisine,
    Diet? diet,
    MealType? type,
    int? minCalories,
    int? maxCalories,
    int? minProtein,
    int? maxProtein,
    int? minFat,
    int? maxFat,
    int? minCarbs,
    int? maxCarbs,
    int? maxReadyTime
  }) = _SearchOption;

  factory SearchOption.fromJson(Map<String, dynamic> json) =>
      _$SearchOptionFromJson(json);
}
