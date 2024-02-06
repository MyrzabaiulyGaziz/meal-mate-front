import 'package:dio/dio.dart';

class HttpService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8081'));
  final String apiUrl = '/api/meal-mate/v1/auth/register';

  Future<void> signUp(Map<String, String> userModel) async {
    try {
      final res = await _dio.post(
        apiUrl,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
        data: {
          "email": "123@mail.ru",
          "password": ' password.text.trim(),',
          "username": "username",
        },
      );
      print(res.statusCode);
      print(res.data);
      
      return res.data;
    } on DioException catch (e, s) {
      print(e);
      print(s);

      return e.response!.data;
    } catch (e, s) {
      print(e);
      print(s);
    }
  }
}
