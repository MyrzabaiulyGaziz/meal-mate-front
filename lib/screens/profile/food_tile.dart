import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe.dart';
import 'package:mealmate/models/recipe_short.dart';
import 'package:mealmate/screens/recipe/recipe_page.dart';

class FoodTile extends StatelessWidget {
  const FoodTile._({
    Key? key,
    required this.foodFull,
    required this.foodShort,
  }) : super(key: key);

  const FoodTile.short({Key? key, required RecipeShort foodShort})
      : this.foodShort = foodShort,
        this.foodFull = null,
        super(key: key);

  factory FoodTile.full({
    Key? key,
    required Recipe foodFull,
  }) {
    return FoodTile._(
        foodFull: foodFull, foodShort: RecipeFromFull.fromFull(foodFull));
  }

  final Recipe? foodFull;
  final RecipeShort foodShort;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFf7f2f9),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () => RecipePage.open(
            context,
            id: foodShort.id,
            recipe: foodFull,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: 'tile${foodShort.id}',
                  child: AspectRatio(
                    aspectRatio: 15 / 16,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: NetworkImage(
                            foodShort.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    foodShort.title,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    textScaler: TextScaler.linear(1.3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
