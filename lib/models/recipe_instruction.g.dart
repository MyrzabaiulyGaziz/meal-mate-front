// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_instruction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeInstructionImpl _$$RecipeInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeInstructionImpl(
      steps: (json['steps'] as List<dynamic>?)
              ?.map((e) => RecipeStep.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RecipeInstructionImplToJson(
        _$RecipeInstructionImpl instance) =>
    <String, dynamic>{
      'steps': instance.steps,
    };
