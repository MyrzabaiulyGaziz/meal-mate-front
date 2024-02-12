import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mealmate/models/recipe_short.dart';
import 'package:mealmate/screens/recipe/recipe_page.dart';

class DishesCarousel extends StatelessWidget {
  const DishesCarousel({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  final List<RecipeShort> recipes;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
        ),
        items: recipes
            .map(
              (recipe) => SizedBox(
                width: double.infinity,
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () => RecipePage.open(
                    context,
                    id: recipe.id,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(recipe.image),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          recipe.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}