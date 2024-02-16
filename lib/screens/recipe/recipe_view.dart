import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/screens/recipe/recipe_ingredient_list.dart';
import 'package:mealmate/screens/recipe/recipe_nutrition_list.dart';
import 'package:mealmate/screens/recipe/recipe_step_list.dart';
import 'package:mealmate/services/recipe_service.dart';
import 'package:mealmate/widgets/sliver_card.dart';

class RecipeView extends StatefulWidget {
  const RecipeView({
    Key? key,
    required this.id,
    this.recipe,
  }) : super(key: key);

  final int id;
  final Recipe? recipe;

  @override
  State<RecipeView> createState() => _RecipeViewState();
}

class _RecipeViewState extends State<RecipeView> {
  Recipe? recipe;

  @override
  void initState() {
    if (widget.recipe != null) {
      recipe = widget.recipe;
    } else {
      loadRecipe();
    }
    super.initState();
  }

  Future<void> loadRecipe() async {
    final result = await RecipeService.getById(id: widget.id);
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
  }

  Future<void> addAsMeal() async {
    final recipe = this.recipe;
    if (recipe == null) return;
    setState(() {
      this.recipe = null;
    });
    final result = await RecipeService.addAsMeal(recipe.id);
    result.fold(
      (l) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l)));
      },
      (_) {
        setState(() {
          this.recipe = recipe;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Meal successfully added"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final recipe = this.recipe;

    if (recipe == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(onPressed: addAsMeal, child: Text("Add")),
      ),
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          SliverCard(
            image: Hero(
              tag: 'tile${widget.id}',
              child: Image.network(
                recipe.image,
                fit: BoxFit.cover,
              ),
            ),
            title: recipe.title,
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Time: ${recipe.readyInMinutes} minutes"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.restaurant),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Servings: ${recipe.servings}"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RecipeNutritionList(
                    id: widget.id,
                  ),
                  RecipeIngredientList(
                    ingredients: recipe.extendedIngredients,
                  ),
                  if (recipe.analyzedInstructions.isNotEmpty)
                    RecipeStepList(
                      instruction: recipe.analyzedInstructions.first,
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 10,
            child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
