import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealmate/core/cubit/app_cubit.dart';
import 'package:mealmate/routes/app_routes.dart';
import 'package:mealmate/screens/login_register/sign_in_screen.dart';

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
    return BlocProvider(
      create: (_) => AppCubit(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        title: 'Meal Mate',
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.routes,
        home: SignInScreen(),
      ),
    );
  }
}
