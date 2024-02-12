import 'package:flutter/material.dart';
import 'package:mealmate/models/pageable.dart';
import 'package:mealmate/models/recipe_short.dart';
import 'package:mealmate/screens/search/search_bar.dart';
import 'package:mealmate/screens/search/search_page.dart';
import 'package:mealmate/services/recipe_service.dart';
import 'package:mealmate/widgets/carousels/diet_carousel.dart';
import 'package:mealmate/widgets/carousels/dishes_carousel.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  Pageable<RecipeShort>? recipes;

  @override
  void initState() {
    getPopularMeals();
    super.initState();
  }

  //dunno whats the difference
  Future<void> getPopularMeals() async {
    final result = await RecipeService.search(
      offset: 0,
    );

    result.fold(
      (l) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      ),
      (r) => setState(
        () => recipes = r,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final recipes = this.recipes;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Text(
                'Find Your Food To Healthy Lifestyle',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => SearchPage.open(
                  context,
                  recipes: recipes,
                ),
                child: HeroSearchBar(
                  enabled: false,
                ),
              ),
              Expanded(
                child: Stack(
                  fit: StackFit.passthrough,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 33.5,
                      ),
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/main_menu_student.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      right: 84,
                      child: Container(
                        alignment: Alignment.center,
                        width: 102,
                        height: 32,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          'Explore now',
                          style: TextStyle(
                            color: Color(0xff34D381),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Popular diets',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: DietCarousel(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Popular meals',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Expanded(
                child: recipes != null
                    ? DishesCarousel(
                        recipes: recipes.results,
                      )
                    : Center(child: CircularProgressIndicator()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
