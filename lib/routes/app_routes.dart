import 'package:flutter/material.dart';
import 'package:mealmate/screens/login_register/bio_page_screen.dart';
import 'package:mealmate/screens/login_register/sign_in_screen.dart';
import 'package:mealmate/screens/login_register/sign_up_screen.dart';
import 'package:mealmate/screens/main_menu.dart';
import 'package:mealmate/screens/meal_tracking/meal_tracking_page.dart';
import 'package:mealmate/screens/navigation_bottom_bar.dart';
import 'package:mealmate/screens/onboarding_screens/onboarding_first_screen.dart';
import 'package:mealmate/screens/onboarding_screens/onboarding_second_screen.dart';
import 'package:mealmate/screens/search/search_page.dart';
import 'package:mealmate/widgets/notification_page.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String onboardingFirstScreen = '/onboarding_first_screen';

  static const String onboardingSecondScreen = '/onboarding_second_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String bioPageScreen = '/bio_page_screen';

  static const String mainMenu = '/main_menu';

  static const String dietPage = '/diet_page';

  static const String mealPage = '/meal_page';

  static const String mealTrackingPage = '/meal_tracking_page';

  static const String popularDietsPage = '/popular_diets_page';

  static const String popularMealsPage = '/popular_meals_page';

  static const String navigationBottomBar = '/navigation_bottom_bar';

  static const String notificationPage = '/notification_page';

  static const String searchPage = '/searchPage';

  static Map<String, WidgetBuilder> routes = {
    signInScreen: (context) => SignInScreen(),
    onboardingFirstScreen: (context) => OnboardingFirstScreen(),
    onboardingSecondScreen: (context) => OnboardingSecondScreen(),
    signUpScreen: (context) => SignUpScreen(),
    bioPageScreen: (context) => BioPageScreen(),
    mainMenu: (context) => MainMenu(),
    mealTrackingPage: (context) => MealTrackingPage(),
    navigationBottomBar: (context) => NavigationBottomBar(),
    notificationPage: (context) => NotificationPage(),
    searchPage: (context) => SearchPage(),
  };
}
