import 'package:flutter/material.dart';
import 'package:mealmate/models/enums/cuisine.dart';
import 'package:mealmate/models/enums/diet.dart';
import 'package:mealmate/models/enums/meal_type.dart';
import 'package:mealmate/models/search_option.dart';

class SearchFilters extends StatefulWidget {
  const SearchFilters({
    Key? key,
    required this.searchOption,
    this.onFilters,
  }) : super(key: key);

  final SearchOption searchOption;
  final ValueChanged<SearchOption>? onFilters;

  @override
  State<SearchFilters> createState() => _SearchFiltersState();
}

class _SearchFiltersState extends State<SearchFilters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height/2
      ),
      decoration: BoxDecoration(
        color: Color(0xFFf7f2f9),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(5),
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(5.0),
        children: [
          Text(
            "Cuisine: ",
            textScaler: TextScaler.linear(1.2),
          ),
          Wrap(
            spacing: 10,
            children: Cuisine.values
                .map((e) {
              final selected = e == widget.searchOption.cuisine;
              return InkWell(
                onTap: () =>
                    widget.onFilters?.call(
                      widget.searchOption.copyWith(
                        cuisine: selected ? null : e,
                      ),
                    ),
                child: Chip(
                  backgroundColor: selected
                      ? Color(0xffdce5e5)
                      : null,
                  label: Text(e.toString()),
                ),
              );
            })
                .toList(),
          ),
          Text(
            "Diets: ",
            textScaler: TextScaler.linear(1.2),
          ),
          Wrap(
            spacing: 10,
            children: Diet.values
                .map((e) {
              final selected = e == widget.searchOption.diet;
              return InkWell(
                onTap: () =>
                    widget.onFilters?.call(
                      widget.searchOption.copyWith(
                        diet: selected ? null : e,
                      ),
                    ),
                child: Chip(
                  backgroundColor: selected
                      ? Color(0xffdce5e5)
                      : null,
                  label: Text(e.toString()),
                ),
              );
            })
                .toList(),
          ),
          Text(
            "Type: ",
            textScaler: TextScaler.linear(1.2),
          ),
          Wrap(
            spacing: 10,
            children: MealType.values
                .map((e) {
                  final selected = e == widget.searchOption.type;
              return InkWell(
                onTap: () =>
                    widget.onFilters?.call(
                      widget.searchOption.copyWith(
                          type: selected ? null : e,
                      ),
                    ),
                child: Chip(
                  backgroundColor: selected
                      ? Color(0xffdce5e5)
                      : null,
                  label: Text(e.toString()),
                ),
              );
            })
                .toList(),
          ),
        ],
      ),
    );
  }
}
