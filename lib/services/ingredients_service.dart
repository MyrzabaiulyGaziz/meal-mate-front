import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mealmate/core/config/dio_config.dart';
import 'package:mealmate/models/Ingredient_nutrition.dart';
import 'package:mealmate/models/ingredient_short.dart';
import 'package:mealmate/models/pageable.dart';

class IngredientsService {
  static String endpoint = "ingredient";

  static Future<Either<String, Pageable<IngredientShort>>> search({
    required int offset,
    String? query,
  }) async {
    try {
      final Map<String, dynamic> queryParams = {
        "query": query,
      };
      queryParams["offset"] = offset;
      queryParams["number"] = 10;
      final response = await DioConfig.instance.get(
        "$endpoint/search",
        queryParameters: queryParams,
      );
      return Right(Pageable.fromJson(response.data, IngredientShort.fromJson));
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, IngredientNutrition>> getById({
    required int id,
    required num amount,
  }) async {
    try {
      final response = await DioConfig.instance.get(
        "$endpoint/$id?amount=$amount&unit=G",
      );
      return Right(IngredientNutrition.fromJson(response.data));
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }
}
