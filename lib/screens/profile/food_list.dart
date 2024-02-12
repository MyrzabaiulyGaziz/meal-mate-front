import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/screens/profile/food_tile.dart';
import 'package:mealmate/services/recipe_service.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<Recipe>? foods;

  @override
  void initState() {
    getFoods();
    super.initState();
  }

  Future<void> getFoods() async {
    final result = await RecipeService.getMyMeals();
    result.fold(
      (l) => ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(l))),
      (r) => setState(
        () => foods = r,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final foods = this.foods;
    if (foods == null)
      return SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return FoodTile.full(foodFull: foods[index]);
        },
        childCount: foods.length,
      ),
    );
  }
}
