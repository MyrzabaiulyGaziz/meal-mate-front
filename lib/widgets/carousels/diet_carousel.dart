import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

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
        items: imageSliders,
      ),
    );
  }
}

final List<Image> imgList = [
  Image.asset('assets/images/vegan_diet.png'),
  Image.asset('assets/images/student_diet.png'),
  Image.asset('assets/images/low_carb_diet.png'),
  Image.asset('assets/images/atkins_diet.png'),
  Image.asset('assets/images/keto_diet.png'),
  Image.asset('assets/images/fasting_diet.png'),
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(1.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(0)),
                child: Stack(
                  children: <Widget>[
                    item,
                    SizedBox(
                      height: 10,
                    ),
                    Text('data'),
                  ],
                )),
          ),
        ))
    .toList();
