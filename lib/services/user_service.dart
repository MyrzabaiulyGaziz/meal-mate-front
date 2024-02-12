import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mealmate/core/config/dio_config.dart';

class UserService {
  static String endpoint = "user";

  static Future<Either<String, void>> update({
    String? firstName,
    String? lastName,
    int? age,
  }) async {
    try {
      await DioConfig.instance.patch(
        endpoint,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          if (firstName != null) 'firstName': firstName,
          if (lastName != null) 'lastname': lastName,
          if (age != null) 'age': age,
        },
      );
      return Right(null);
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }
}
