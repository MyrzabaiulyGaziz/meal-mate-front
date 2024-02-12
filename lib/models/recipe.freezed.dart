// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int? get servings => throw _privateConstructorUsedError;
  int? get readyInMinutes => throw _privateConstructorUsedError;
  double? get healthScore => throw _privateConstructorUsedError;
  double? get pricePerServing => throw _privateConstructorUsedError;
  List<RecipeInstruction> get analyzedInstructions =>
      throw _privateConstructorUsedError;
  bool? get cheap => throw _privateConstructorUsedError;
  bool? get diaryFree => throw _privateConstructorUsedError;
  List<String> get diets => throw _privateConstructorUsedError;
  bool? get glutenFree => throw _privateConstructorUsedError;
  bool? get ketogenic => throw _privateConstructorUsedError;
  bool? get lowFodmap => throw _privateConstructorUsedError;
  bool? get sustainable => throw _privateConstructorUsedError;
  bool? get vegan => throw _privateConstructorUsedError;
  bool? get vegetarian => throw _privateConstructorUsedError;
  bool? get veryHealthy => throw _privateConstructorUsedError;
  bool? get veryPopular => throw _privateConstructorUsedError;
  bool? get whole30 => throw _privateConstructorUsedError;
  List<String> get dishTypes => throw _privateConstructorUsedError;
  List<Ingredient> get extendedIngredients =>
      throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      int? servings,
      int? readyInMinutes,
      double? healthScore,
      double? pricePerServing,
      List<RecipeInstruction> analyzedInstructions,
      bool? cheap,
      bool? diaryFree,
      List<String> diets,
      bool? glutenFree,
      bool? ketogenic,
      bool? lowFodmap,
      bool? sustainable,
      bool? vegan,
      bool? vegetarian,
      bool? veryHealthy,
      bool? veryPopular,
      bool? whole30,
      List<String> dishTypes,
      List<Ingredient> extendedIngredients,
      String? summary});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? servings = freezed,
    Object? readyInMinutes = freezed,
    Object? healthScore = freezed,
    Object? pricePerServing = freezed,
    Object? analyzedInstructions = null,
    Object? cheap = freezed,
    Object? diaryFree = freezed,
    Object? diets = null,
    Object? glutenFree = freezed,
    Object? ketogenic = freezed,
    Object? lowFodmap = freezed,
    Object? sustainable = freezed,
    Object? vegan = freezed,
    Object? vegetarian = freezed,
    Object? veryHealthy = freezed,
    Object? veryPopular = freezed,
    Object? whole30 = freezed,
    Object? dishTypes = null,
    Object? extendedIngredients = null,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      readyInMinutes: freezed == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      healthScore: freezed == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerServing: freezed == pricePerServing
          ? _value.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double?,
      analyzedInstructions: null == analyzedInstructions
          ? _value.analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<RecipeInstruction>,
      cheap: freezed == cheap
          ? _value.cheap
          : cheap // ignore: cast_nullable_to_non_nullable
              as bool?,
      diaryFree: freezed == diaryFree
          ? _value.diaryFree
          : diaryFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      diets: null == diets
          ? _value.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      glutenFree: freezed == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      ketogenic: freezed == ketogenic
          ? _value.ketogenic
          : ketogenic // ignore: cast_nullable_to_non_nullable
              as bool?,
      lowFodmap: freezed == lowFodmap
          ? _value.lowFodmap
          : lowFodmap // ignore: cast_nullable_to_non_nullable
              as bool?,
      sustainable: freezed == sustainable
          ? _value.sustainable
          : sustainable // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegan: freezed == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegetarian: freezed == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool?,
      veryHealthy: freezed == veryHealthy
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      veryPopular: freezed == veryPopular
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
      whole30: freezed == whole30
          ? _value.whole30
          : whole30 // ignore: cast_nullable_to_non_nullable
              as bool?,
      dishTypes: null == dishTypes
          ? _value.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extendedIngredients: null == extendedIngredients
          ? _value.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String image,
      int? servings,
      int? readyInMinutes,
      double? healthScore,
      double? pricePerServing,
      List<RecipeInstruction> analyzedInstructions,
      bool? cheap,
      bool? diaryFree,
      List<String> diets,
      bool? glutenFree,
      bool? ketogenic,
      bool? lowFodmap,
      bool? sustainable,
      bool? vegan,
      bool? vegetarian,
      bool? veryHealthy,
      bool? veryPopular,
      bool? whole30,
      List<String> dishTypes,
      List<Ingredient> extendedIngredients,
      String? summary});
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? servings = freezed,
    Object? readyInMinutes = freezed,
    Object? healthScore = freezed,
    Object? pricePerServing = freezed,
    Object? analyzedInstructions = null,
    Object? cheap = freezed,
    Object? diaryFree = freezed,
    Object? diets = null,
    Object? glutenFree = freezed,
    Object? ketogenic = freezed,
    Object? lowFodmap = freezed,
    Object? sustainable = freezed,
    Object? vegan = freezed,
    Object? vegetarian = freezed,
    Object? veryHealthy = freezed,
    Object? veryPopular = freezed,
    Object? whole30 = freezed,
    Object? dishTypes = null,
    Object? extendedIngredients = null,
    Object? summary = freezed,
  }) {
    return _then(_$RecipeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      servings: freezed == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int?,
      readyInMinutes: freezed == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      healthScore: freezed == healthScore
          ? _value.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as double?,
      pricePerServing: freezed == pricePerServing
          ? _value.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double?,
      analyzedInstructions: null == analyzedInstructions
          ? _value._analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<RecipeInstruction>,
      cheap: freezed == cheap
          ? _value.cheap
          : cheap // ignore: cast_nullable_to_non_nullable
              as bool?,
      diaryFree: freezed == diaryFree
          ? _value.diaryFree
          : diaryFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      diets: null == diets
          ? _value._diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      glutenFree: freezed == glutenFree
          ? _value.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool?,
      ketogenic: freezed == ketogenic
          ? _value.ketogenic
          : ketogenic // ignore: cast_nullable_to_non_nullable
              as bool?,
      lowFodmap: freezed == lowFodmap
          ? _value.lowFodmap
          : lowFodmap // ignore: cast_nullable_to_non_nullable
              as bool?,
      sustainable: freezed == sustainable
          ? _value.sustainable
          : sustainable // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegan: freezed == vegan
          ? _value.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool?,
      vegetarian: freezed == vegetarian
          ? _value.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool?,
      veryHealthy: freezed == veryHealthy
          ? _value.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      veryPopular: freezed == veryPopular
          ? _value.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
      whole30: freezed == whole30
          ? _value.whole30
          : whole30 // ignore: cast_nullable_to_non_nullable
              as bool?,
      dishTypes: null == dishTypes
          ? _value._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extendedIngredients: null == extendedIngredients
          ? _value._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  const _$RecipeImpl(
      {required this.id,
      required this.title,
      required this.image,
      this.servings,
      this.readyInMinutes,
      this.healthScore,
      this.pricePerServing,
      final List<RecipeInstruction> analyzedInstructions = const [],
      this.cheap,
      this.diaryFree,
      final List<String> diets = const [],
      this.glutenFree,
      this.ketogenic,
      this.lowFodmap,
      this.sustainable,
      this.vegan,
      this.vegetarian,
      this.veryHealthy,
      this.veryPopular,
      this.whole30,
      final List<String> dishTypes = const [],
      final List<Ingredient> extendedIngredients = const [],
      this.summary})
      : _analyzedInstructions = analyzedInstructions,
        _diets = diets,
        _dishTypes = dishTypes,
        _extendedIngredients = extendedIngredients;

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final int? servings;
  @override
  final int? readyInMinutes;
  @override
  final double? healthScore;
  @override
  final double? pricePerServing;
  final List<RecipeInstruction> _analyzedInstructions;
  @override
  @JsonKey()
  List<RecipeInstruction> get analyzedInstructions {
    if (_analyzedInstructions is EqualUnmodifiableListView)
      return _analyzedInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyzedInstructions);
  }

  @override
  final bool? cheap;
  @override
  final bool? diaryFree;
  final List<String> _diets;
  @override
  @JsonKey()
  List<String> get diets {
    if (_diets is EqualUnmodifiableListView) return _diets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diets);
  }

  @override
  final bool? glutenFree;
  @override
  final bool? ketogenic;
  @override
  final bool? lowFodmap;
  @override
  final bool? sustainable;
  @override
  final bool? vegan;
  @override
  final bool? vegetarian;
  @override
  final bool? veryHealthy;
  @override
  final bool? veryPopular;
  @override
  final bool? whole30;
  final List<String> _dishTypes;
  @override
  @JsonKey()
  List<String> get dishTypes {
    if (_dishTypes is EqualUnmodifiableListView) return _dishTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  final List<Ingredient> _extendedIngredients;
  @override
  @JsonKey()
  List<Ingredient> get extendedIngredients {
    if (_extendedIngredients is EqualUnmodifiableListView)
      return _extendedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  final String? summary;

  @override
  String toString() {
    return 'Recipe(id: $id, title: $title, image: $image, servings: $servings, readyInMinutes: $readyInMinutes, healthScore: $healthScore, pricePerServing: $pricePerServing, analyzedInstructions: $analyzedInstructions, cheap: $cheap, diaryFree: $diaryFree, diets: $diets, glutenFree: $glutenFree, ketogenic: $ketogenic, lowFodmap: $lowFodmap, sustainable: $sustainable, vegan: $vegan, vegetarian: $vegetarian, veryHealthy: $veryHealthy, veryPopular: $veryPopular, whole30: $whole30, dishTypes: $dishTypes, extendedIngredients: $extendedIngredients, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            (identical(other.healthScore, healthScore) ||
                other.healthScore == healthScore) &&
            (identical(other.pricePerServing, pricePerServing) ||
                other.pricePerServing == pricePerServing) &&
            const DeepCollectionEquality()
                .equals(other._analyzedInstructions, _analyzedInstructions) &&
            (identical(other.cheap, cheap) || other.cheap == cheap) &&
            (identical(other.diaryFree, diaryFree) ||
                other.diaryFree == diaryFree) &&
            const DeepCollectionEquality().equals(other._diets, _diets) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.ketogenic, ketogenic) ||
                other.ketogenic == ketogenic) &&
            (identical(other.lowFodmap, lowFodmap) ||
                other.lowFodmap == lowFodmap) &&
            (identical(other.sustainable, sustainable) ||
                other.sustainable == sustainable) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.veryHealthy, veryHealthy) ||
                other.veryHealthy == veryHealthy) &&
            (identical(other.veryPopular, veryPopular) ||
                other.veryPopular == veryPopular) &&
            (identical(other.whole30, whole30) || other.whole30 == whole30) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        image,
        servings,
        readyInMinutes,
        healthScore,
        pricePerServing,
        const DeepCollectionEquality().hash(_analyzedInstructions),
        cheap,
        diaryFree,
        const DeepCollectionEquality().hash(_diets),
        glutenFree,
        ketogenic,
        lowFodmap,
        sustainable,
        vegan,
        vegetarian,
        veryHealthy,
        veryPopular,
        whole30,
        const DeepCollectionEquality().hash(_dishTypes),
        const DeepCollectionEquality().hash(_extendedIngredients),
        summary
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required final int id,
      required final String title,
      required final String image,
      final int? servings,
      final int? readyInMinutes,
      final double? healthScore,
      final double? pricePerServing,
      final List<RecipeInstruction> analyzedInstructions,
      final bool? cheap,
      final bool? diaryFree,
      final List<String> diets,
      final bool? glutenFree,
      final bool? ketogenic,
      final bool? lowFodmap,
      final bool? sustainable,
      final bool? vegan,
      final bool? vegetarian,
      final bool? veryHealthy,
      final bool? veryPopular,
      final bool? whole30,
      final List<String> dishTypes,
      final List<Ingredient> extendedIngredients,
      final String? summary}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  int? get servings;
  @override
  int? get readyInMinutes;
  @override
  double? get healthScore;
  @override
  double? get pricePerServing;
  @override
  List<RecipeInstruction> get analyzedInstructions;
  @override
  bool? get cheap;
  @override
  bool? get diaryFree;
  @override
  List<String> get diets;
  @override
  bool? get glutenFree;
  @override
  bool? get ketogenic;
  @override
  bool? get lowFodmap;
  @override
  bool? get sustainable;
  @override
  bool? get vegan;
  @override
  bool? get vegetarian;
  @override
  bool? get veryHealthy;
  @override
  bool? get veryPopular;
  @override
  bool? get whole30;
  @override
  List<String> get dishTypes;
  @override
  List<Ingredient> get extendedIngredients;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
