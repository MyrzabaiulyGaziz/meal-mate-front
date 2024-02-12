// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchOptionImpl _$$SearchOptionImplFromJson(Map<String, dynamic> json) =>
    _$SearchOptionImpl(
      query: json['query'] as String?,
      cuisine: $enumDecodeNullable(_$CuisineEnumMap, json['cuisine']),
      diet: $enumDecodeNullable(_$DietEnumMap, json['diet']),
      type: $enumDecodeNullable(_$MealTypeEnumMap, json['type']),
      minCalories: json['minCalories'] as int?,
      maxCalories: json['maxCalories'] as int?,
      minProtein: json['minProtein'] as int?,
      maxProtein: json['maxProtein'] as int?,
      minFat: json['minFat'] as int?,
      maxFat: json['maxFat'] as int?,
      minCarbs: json['minCarbs'] as int?,
      maxCarbs: json['maxCarbs'] as int?,
      maxReadyTime: json['maxReadyTime'] as int?,
    );

Map<String, dynamic> _$$SearchOptionImplToJson(_$SearchOptionImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'cuisine': _$CuisineEnumMap[instance.cuisine],
      'diet': _$DietEnumMap[instance.diet],
      'type': _$MealTypeEnumMap[instance.type],
      'minCalories': instance.minCalories,
      'maxCalories': instance.maxCalories,
      'minProtein': instance.minProtein,
      'maxProtein': instance.maxProtein,
      'minFat': instance.minFat,
      'maxFat': instance.maxFat,
      'minCarbs': instance.minCarbs,
      'maxCarbs': instance.maxCarbs,
      'maxReadyTime': instance.maxReadyTime,
    };

const _$CuisineEnumMap = {
  Cuisine.AFRICAN: 'AFRICAN',
  Cuisine.ASIAN: 'ASIAN',
  Cuisine.AMERICAN: 'AMERICAN',
  Cuisine.BRITISH: 'BRITISH',
  Cuisine.CAJUN: 'CAJUN',
  Cuisine.CARIBBEAN: 'CARIBBEAN',
  Cuisine.CHINESE: 'CHINESE',
  Cuisine.EASTERN_EUROPEAN: 'EASTERN_EUROPEAN',
  Cuisine.EUROPEAN: 'EUROPEAN',
  Cuisine.FRENCH: 'FRENCH',
  Cuisine.GERMAN: 'GERMAN',
  Cuisine.GREEK: 'GREEK',
  Cuisine.INDIAN: 'INDIAN',
  Cuisine.IRISH: 'IRISH',
  Cuisine.ITALIAN: 'ITALIAN',
  Cuisine.JAPANESE: 'JAPANESE',
  Cuisine.JEWISH: 'JEWISH',
  Cuisine.KOREAN: 'KOREAN',
  Cuisine.LATIN_AMERICAN: 'LATIN_AMERICAN',
  Cuisine.MEDITERRANEAN: 'MEDITERRANEAN',
  Cuisine.MEXICAN: 'MEXICAN',
  Cuisine.MIDDLE_EASTERN: 'MIDDLE_EASTERN',
  Cuisine.NORDIC: 'NORDIC',
  Cuisine.SOUTHERN: 'SOUTHERN',
  Cuisine.SPANISH: 'SPANISH',
  Cuisine.THAI: 'THAI',
  Cuisine.VIETNAMESE: 'VIETNAMESE',
};

const _$DietEnumMap = {
  Diet.GLUTEN_FREE: 'GLUTEN_FREE',
  Diet.KETOGENIC: 'KETOGENIC',
  Diet.VEGETARIAN: 'VEGETARIAN',
  Diet.VEGAN: 'VEGAN',
};

const _$MealTypeEnumMap = {
  MealType.MAIN_COURSE: 'MAIN_COURSE',
  MealType.SIDE_DISH: 'SIDE_DISH',
  MealType.DESSERT: 'DESSERT',
  MealType.APPETIZER: 'APPETIZER',
  MealType.SALAD: 'SALAD',
  MealType.BREAD: 'BREAD',
  MealType.BREAKFAST: 'BREAKFAST',
  MealType.SOUP: 'SOUP',
  MealType.BEVERAGE: 'BEVERAGE',
  MealType.SAUCE: 'SAUCE',
  MealType.MARINADE: 'MARINADE',
  MealType.FINGERFOOD: 'FINGERFOOD',
  MealType.SNACK: 'SNACK',
  MealType.DRINK: 'DRINK',
};
