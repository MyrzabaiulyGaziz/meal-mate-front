import 'package:dio/dio.dart';
import 'package:mealmate/models/user_model.dart';

class DioService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8081'));
  final String apiUrl = '/api/meal-mate/v1/auth/';

  Future<UserModel> signIn(String email, String password) async {
    try {
      final res = await _dio.post(apiUrl + 'login',
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ),
          data: {
            'email': email,
            'password': password,
          });
      print(res.statusCode);
      print(res.data);
      return UserModel(
        email: email,
        token: res.data['token'],
      );
    } on DioException catch (e, s) {
      print(e);
      print(s);
      return e.response!.data;
    }
  }

  Future<UserModel> signUp(String email, String password) async {
    try {
      final res = await _dio.post(
        apiUrl + 'register',
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          'email': email,
          'password': password,
        },
      );
      if (res.statusCode == 200) {
        return UserModel(email: email, token: res.data['token']);
      }
      print(res.statusCode);
      print(res.data);
      return res.data;
    } on DioException catch (e, s) {
      print(e);
      print(s);
      return e.response!.data;
    }
  }
}
