import 'package:flutter/material.dart';
import 'package:mealmate/models/ingredient.dart';

class RecipeIngredientList extends StatelessWidget {
  const RecipeIngredientList({
    Key? key,
    required this.ingredients,
  }) : super(key: key);

  final List<Ingredient> ingredients;

  String getText(Ingredient ingredient) {
    final sb = StringBuffer();

    final amount = ingredient.measures.amount;

    sb.write(amount == amount.roundToDouble() ? amount.toInt() : amount);

    final unit = ingredient.measures.unitLong;

    if (unit.isNotEmpty) {
      sb.write(" ");
      sb.write(unit);
    }

    sb.write(" of ");
    sb.write(ingredient.nameClean);

    return sb.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Ingredients:",
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(1.5),
          ),
          for (var ingredient in ingredients)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                getText(ingredient),
              ),
            ),
        ],
      ),
    );
  }
}
