import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/screens/recipe/recipe_view.dart';

class RecipePage extends StatelessWidget {
  static open(
    BuildContext context, {
    required int id,
    Recipe? recipe,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return RecipePage(
            id: id,
            recipe: recipe,
          );
        },
      ),
    );
  }

  const RecipePage({
    Key? key,
    required this.id,
    this.recipe,
  }) : super(key: key);

  final int id;
  final Recipe? recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          Positioned(
            top: 40,
            left: 20,
            child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
          ),
          RecipeView(
            id: id,
            recipe: recipe,
          ),
        ],
      ),
    );
  }
}
