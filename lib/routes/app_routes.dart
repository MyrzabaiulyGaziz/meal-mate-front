import 'package:flutter/material.dart';
import 'package:mealmate/screens/diet_page.dart';
import 'package:mealmate/screens/login_register/bio_page_screen.dart';
import 'package:mealmate/screens/login_register/sign_in_screen.dart';
import 'package:mealmate/screens/login_register/sign_up_screen.dart';
import 'package:mealmate/screens/login_register/sign_up_success_screen.dart';
import 'package:mealmate/screens/login_register/upload_photo_screen.dart';
import 'package:mealmate/screens/login_register/upload_preview_screen.dart';
import 'package:mealmate/screens/login_register/verification_code_screen.dart';
import 'package:mealmate/screens/login_register/verify_email_screen.dart';
import 'package:mealmate/screens/main_menu.dart';
import 'package:mealmate/screens/meal_page.dart';
import 'package:mealmate/screens/meal_tracking/meal_tracking_page.dart';
import 'package:mealmate/screens/onboarding_screens/onboarding_first_screen.dart';
import 'package:mealmate/screens/onboarding_screens/onboarding_second_screen.dart';
import 'package:mealmate/screens/onboarding_screens/splash_screen.dart';
import 'package:mealmate/screens/popular_diets_page.dart';
import 'package:mealmate/screens/popular_meals_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String onboardingFirstScreen = '/onboarding_first_screen';

  static const String onboardingSecondScreen = '/onboarding_second_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String bioPageScreen = '/bio_page_screen';

  static const String uploadPhotoScreen = '/upload_photo_screen';

  static const String uploadPreviewScreen = '/upload_preview_screen';

  static const String signUpSuccessScreen = '/sign_up_success_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String verifyEmailScreen = '/verify_email_screen';

  static const String mainMenu = '/main_menu';

  static const String dietPage = '/diet_page';

  static const String mealPage = '/meal_page';

  static const String mealTrackingPage = '/meal_tracking_page';

  static const String popularDietsPage = '/popular_diets_page';

  static const String popularMealsPage = '/popular_meals_page';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    signInScreen: (context) => SignInScreen(),
    onboardingFirstScreen: (context) => OnboardingFirstScreen(),
    onboardingSecondScreen: (context) => OnboardingSecondScreen(),
    signUpScreen: (context) => SignUpScreen(),
    bioPageScreen: (context) => BioPageScreen(),
    uploadPhotoScreen: (context) => UploadPhotoScreen(),
    uploadPreviewScreen: (context) => UploadPreviewScreen(),
    signUpSuccessScreen: (context) => SignUpSuccessScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    verifyEmailScreen: (context) => VerifyEmailScreen(),
    mainMenu: (context) => MainMenu(),
    dietPage: (context) => DietPage(),
    mealPage: (context) => MealPage(),
    mealTrackingPage: (context) => MealTrackingPage(),
    popularDietsPage: (context) => PopularDietsPage(),
    popularMealsPage: (context) => PopularMealsPage(),
  };
}
