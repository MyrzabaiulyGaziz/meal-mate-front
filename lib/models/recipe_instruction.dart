import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mealmate/models/recipe_step.dart';

part 'recipe_instruction.freezed.dart';
part 'recipe_instruction.g.dart';

@freezed
class RecipeInstruction with _$RecipeInstruction {
  const factory RecipeInstruction({
    @Default([]) List<RecipeStep> steps,
  }) = _RecipeInstruction;

  factory RecipeInstruction.fromJson(Map<String, dynamic> json) =>
      _$RecipeInstructionFromJson(json);
}