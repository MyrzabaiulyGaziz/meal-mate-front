import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mealmate/core/config/dio_config.dart';
import 'package:mealmate/models/pageable.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/models/nutrition.dart';
import 'package:mealmate/models/recipe_short.dart';
import 'package:mealmate/models/search_option.dart';

class RecipeService {
  static String endpoint = "recipe";

  static Future<Either<String, Pageable<RecipeShort>>> search({
    required int offset,
    SearchOption? searchOption,
  }) async {
    try {
      final queryParams = (searchOption ?? SearchOption()).toJson();
      queryParams["offset"] = offset;
      queryParams["number"] = 10;
      final response = await DioConfig.instance.get(
        "$endpoint/search",
        queryParameters: queryParams,
      );
      return Right(Pageable.fromJson(response.data, RecipeShort.fromJson));
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, Recipe>> getById({
    required int id,
  }) async {
    try {
      final response = await DioConfig.instance.get(
        "$endpoint/$id",
      );
      return Right(Recipe.fromJson(response.data));
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, List<Recipe>>> getMyMeals() async {
    try {
      final response = await DioConfig.instance.get(
        endpoint,
      );
      return Right((response.data as List)
          .map((json) => Recipe.fromJson(json))
          .toList());
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, List<Nutrition>>> getRecipeNutrition({
    required int id,
  }) async {
    try {
      final response = await DioConfig.instance.get(
        "$endpoint/$id/nutrition",
      );
      return Right((response.data["nutrients"] as List)
          .map((json) => Nutrition.fromJson(json))
          .toList());
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, void>> addAsMeal(int recipeId) async {
    try {
      await DioConfig.instance.post(endpoint,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ),
          data: {
            'recipeId': recipeId,
            'dateTime': DateTime.now().toIso8601String(),
          });
      return Right(null);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left("Invalid password");
      }
      return Left(DioConfig.getErrorMessage(e));
    }
  }
}
