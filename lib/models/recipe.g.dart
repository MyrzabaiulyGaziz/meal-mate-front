// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      servings: json['servings'] as int?,
      readyInMinutes: json['readyInMinutes'] as int?,
      healthScore: (json['healthScore'] as num?)?.toDouble(),
      pricePerServing: (json['pricePerServing'] as num?)?.toDouble(),
      analyzedInstructions: (json['analyzedInstructions'] as List<dynamic>?)
              ?.map(
                  (e) => RecipeInstruction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      cheap: json['cheap'] as bool?,
      diaryFree: json['diaryFree'] as bool?,
      diets:
          (json['diets'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      glutenFree: json['glutenFree'] as bool?,
      ketogenic: json['ketogenic'] as bool?,
      lowFodmap: json['lowFodmap'] as bool?,
      sustainable: json['sustainable'] as bool?,
      vegan: json['vegan'] as bool?,
      vegetarian: json['vegetarian'] as bool?,
      veryHealthy: json['veryHealthy'] as bool?,
      veryPopular: json['veryPopular'] as bool?,
      whole30: json['whole30'] as bool?,
      dishTypes: (json['dishTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>?)
              ?.map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'servings': instance.servings,
      'readyInMinutes': instance.readyInMinutes,
      'healthScore': instance.healthScore,
      'pricePerServing': instance.pricePerServing,
      'analyzedInstructions': instance.analyzedInstructions,
      'cheap': instance.cheap,
      'diaryFree': instance.diaryFree,
      'diets': instance.diets,
      'glutenFree': instance.glutenFree,
      'ketogenic': instance.ketogenic,
      'lowFodmap': instance.lowFodmap,
      'sustainable': instance.sustainable,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'veryHealthy': instance.veryHealthy,
      'veryPopular': instance.veryPopular,
      'whole30': instance.whole30,
      'dishTypes': instance.dishTypes,
      'extendedIngredients': instance.extendedIngredients,
      'summary': instance.summary,
    };