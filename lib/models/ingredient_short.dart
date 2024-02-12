import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_short.freezed.dart';
part 'ingredient_short.g.dart';

@freezed
class IngredientShort with _$IngredientShort {
  const factory IngredientShort({
    required int id,
    required String name,
  }) = _IngredientShort;

  factory IngredientShort.fromJson(Map<String, dynamic> json) =>
      _$IngredientShortFromJson(json);
}
