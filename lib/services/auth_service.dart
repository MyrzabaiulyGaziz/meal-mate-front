import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mealmate/core/config/auth_interceptor.dart';
import 'package:mealmate/core/config/dio_config.dart';
import 'package:mealmate/models/user.dart';

class AuthService {
  static String endpoint = "auth";

  static Future<Either<String, void>> signIn(
      String email, String password) async {
    try {
      final res = await DioConfig.instance.post('$endpoint/login',
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ),
          data: {
            'email': email,
            'password': password,
          });
      AuthInterceptor.instance.setJwtToken(res.data['token']);
      return Right(null);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left("Invalid password");
      }
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, void>> signUp(
      String email, String password) async {
    try {
      final res = await DioConfig.instance.post(
        '$endpoint/register',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          'email': email,
          'password': password,
        },
      );
      AuthInterceptor.instance.setJwtToken(res.data['token']);
      return Right(null);
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }

  static Future<Either<String, User>> getUser() async {
    try {
      final response = await DioConfig.instance.get(
        "$endpoint/me",
      );
      return Right(User.fromJson(response.data));
    } on DioException catch (e) {
      return Left(DioConfig.getErrorMessage(e));
    }
  }
}
