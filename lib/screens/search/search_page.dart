import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mealmate/models/pageable.dart';
import 'package:mealmate/models/recipe_short.dart';
import 'package:mealmate/models/search_option.dart';
import 'package:mealmate/screens/profile/food_tile.dart';
import 'package:mealmate/screens/search/search_bar.dart';
import 'package:mealmate/services/recipe_service.dart';
import 'package:mealmate/widgets/scroll_pagination.dart';

class SearchPage extends StatefulWidget {
  static open(
    BuildContext context, {
    Pageable<RecipeShort>? recipes,
    SearchOption? searchOption,
  }) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return SearchPage(
            recipes: recipes,
            searchOption: searchOption,
          );
        },
      ),
    );
  }

  const SearchPage({
    Key? key,
    this.recipes,
    this.searchOption,
  }) : super(key: key);

  final Pageable<RecipeShort>? recipes;
  final SearchOption? searchOption;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late SearchOption searchOptions = widget.searchOption ?? SearchOption();

  late Pageable<RecipeShort>? recipes = widget.recipes;

  Timer? searchTimer;

  @override
  void initState() {
    if (recipes == null) {
      fetchRecipes();
    }
    super.initState();
  }

  Future<void> startSearch(String query) async {
    setState(() {
      recipes = null;
    });
    searchOptions = searchOptions.copyWith(
      query: query,
    );
    searchTimer?.cancel();
    searchTimer = Timer(
      Duration(milliseconds: 200),
      fetchRecipes,
    );
  }

  Future<void> applyFilters(SearchOption filters) async {
    setState(() {
      recipes = null;
    });
    searchOptions = filters.copyWith(
      query: searchOptions.query,
    );
    fetchRecipes();
  }

  Future<void> fetchRecipes() async {
    final result = await RecipeService.search(
      offset: (recipes?.offset ?? 0) + (recipes?.number ?? 0),
      searchOption: searchOptions,
    );

    result.fold(
      (l) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l),
        ),
      ),
      (r) => setState(
        () => recipes = r.copyWith(results: [
          ...?recipes?.results,
          ...r.results,
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final recipes = this.recipes;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          HeroSearchBar(
            currentFilters: searchOptions,
            onChanged: startSearch,
            onFilters: applyFilters,
          ),
          Expanded(
            child: recipes != null
                ? ScrollPagination(
                    showLoadingIndicator: recipes.totalResults < recipes.offset,
                    onScrollEnded: fetchRecipes,
                    itemCount: min(
                        recipes.offset + recipes.number, recipes.totalResults),
                    itemBuilder: (context, index) {
                      return FoodTile.short(foodShort: recipes.results[index]);
                    },
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    searchTimer?.cancel();
    super.dispose();
  }
}
