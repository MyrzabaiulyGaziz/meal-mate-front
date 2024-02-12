import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor._();

  static final AuthInterceptor _instance = AuthInterceptor._();

  static AuthInterceptor get instance => _instance;

  static final String AUTHORIZATION = "Authorization";

  String? jwtToken;

  void setJwtToken(String token) {
    jwtToken = token;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (jwtToken == null) {
      handler.next(options);
      return;
    }

    options.headers[AUTHORIZATION] = "Internal $jwtToken";
    handler.next(options);
  }
}
