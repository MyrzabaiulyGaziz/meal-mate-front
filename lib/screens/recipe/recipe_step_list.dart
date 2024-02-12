import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe_instruction.dart';
import 'package:mealmate/models/recipe_step.dart';

class RecipeStepList extends StatelessWidget {
  const RecipeStepList({
    Key? key,
    required this.instruction,
  }) : super(key: key);

  final RecipeInstruction instruction;

  String getText(RecipeStep step) {
    final sb = StringBuffer();
    
    sb.write("STEP ${step.number}:");
    sb.write(step.step);

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
            "Method:",
            textAlign: TextAlign.center,
            textScaler: TextScaler.linear(1.5),
          ),
          for (var step in instruction.steps)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                getText(step),
              ),
            ),
        ],
      ),
    );
  }
}
