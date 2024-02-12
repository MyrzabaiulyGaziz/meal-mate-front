import 'package:flutter/material.dart';
import 'package:mealmate/models/nutrition.dart';
import 'package:mealmate/services/recipe_service.dart';

class RecipeNutritionList extends StatefulWidget {
  const RecipeNutritionList({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  State<RecipeNutritionList> createState() => _RecipeNutritionListState();
}

class _RecipeNutritionListState extends State<RecipeNutritionList> {
  List<Nutrition>? nutrition;

  @override
  void initState() {
    loadNutrition();
    super.initState();
  }

  Future<void> loadNutrition() async {
    final result = await RecipeService.getRecipeNutrition(id: widget.id);
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
  }

  @override
  Widget build(BuildContext context) {
    final nutrition = this.nutrition;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Nutrition per serving",
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        if (nutrition == null)
          Center(child: CircularProgressIndicator())
        else
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nutrition.length,
              itemBuilder: (context, index) {
                final nutritionPart = nutrition[index];
                final value = nutritionPart.amount;
                final unit = nutritionPart.unit;
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                      Text("${nutritionPart.name}:"),
                      Text("$value $unit"),
                    ],
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
