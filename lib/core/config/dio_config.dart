import 'package:dio/dio.dart';
import 'package:mealmate/core/config/auth_interceptor.dart';
import 'package:mealmate/core/config/repository_config.dart';

class DioConfig {
  const DioConfig._();

  static final Dio _instance = () {
    final dio = Dio(BaseOptions(
      baseUrl: RepositoryConfig.baseUrl,
    ));
    dio.interceptors.add(AuthInterceptor.instance);
    dio.interceptors.add(LogInterceptor());
    return dio;
  }();

  static Dio get instance => _instance;

  static String getErrorMessage(DioException exception) {
    final data = exception.response?.data;
    if (data is! Map<String, dynamic>) {
      return exception.message ??
          exception.response?.statusCode?.toString() ??
          "Unknown Error";
    }
    return data["message"];
  }
}
