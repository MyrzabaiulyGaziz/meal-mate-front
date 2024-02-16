import 'package:flutter/material.dart';
import 'package:mealmate/models/nutrition.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/routes/app_routes.dart';
import 'package:mealmate/screens/profile/food_list.dart';
import 'package:mealmate/services/recipe_service.dart';
import 'dart:developer' show log;

class DailyIntake extends StatefulWidget {
  final int? id;
  const DailyIntake({Key? key, this.id}) : super(key: key);

  @override
  State<DailyIntake> createState() => _DailyIntakeState();
}

class _DailyIntakeState extends State<DailyIntake>
    with TickerProviderStateMixin {
  late AnimationController controller;
  List<Recipe>? recipe;
  List<Nutrition>? nutrition;
  double sumKcal = 0.0;
  double sum = 0.0;

  Future<void> loadRecipes() async {
    final result = await RecipeService.getMyMeals();
    result.fold(
      (l) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      ),
      (r) => setState(
        () => recipe = r,
      ),
    );
    print('recipe $recipe');
    log('recipe $recipe');
  }

  Future<void> getNutritionOfRecipes() async {
    recipe = this.recipe;
    for (var i = 0; i < recipe!.length; i++) {
      final result = await RecipeService.getRecipeNutrition(id: recipe![i].id);
      result.fold(
        (l) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l),
          ),
        ),
        (r) => setState(
          () => nutrition = r,
        ),
      );
      extractCaloriesFromNutrition();
    }
    sumKcal = sum;
  }

  void extractCaloriesFromNutrition() {
    nutrition = this.nutrition;

    sum += nutrition![0].amount;
  }

  @override
  void initState() {
    super.initState();
    loadRecipes().whenComplete(() => getNutritionOfRecipes());
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 40,
              left: 110,
            ),
            child: Text(
              'Daily Intake',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Text(
                'Water',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.minimize),
                  ),
                  AnimatedContainer(
                    duration: Duration.zero,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/empty_bottle.png'),
                      ),
                    ),
                    child: Image.asset('assets/images/empty_bottle.png'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Meals',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.mealTrackingPage);
                  },
                  icon: Icon(Icons.add),
                ),
                Text(
                  'Add Meal',
                  style: TextStyle(fontSize: 18),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Daily intake of kcal: $sumKcal',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ],
          ),
          Expanded(
            child: FoodList(),
          ),
        ],
      ),
    );
  }
}
