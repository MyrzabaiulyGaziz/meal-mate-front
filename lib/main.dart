import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mealmate/screens/login_register/sign_in_screen.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'mealmate',
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      home: SignInScreen(),
    );
  }
}
