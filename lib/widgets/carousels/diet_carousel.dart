import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mealmate/models/enums/diet.dart';
import 'package:mealmate/models/search_option.dart';
import 'package:mealmate/screens/search/search_page.dart';

class DietCarousel extends StatelessWidget {
  const DietCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 1,
          enlargeCenterPage: true,
        ),
        items: Diet.values
            .map(
              (e) => SizedBox(
                width: double.infinity,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () => SearchPage.open(
                    context,
                    searchOption: SearchOption(
                      diet: e,
                    ),
                  ),
                  child: Image.asset(
                      'assets/images/diets/${e.name.toLowerCase()}.png'),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
