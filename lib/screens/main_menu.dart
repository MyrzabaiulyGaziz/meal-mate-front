import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';
import 'package:mealmate/widgets/carousels/diet_carousel.dart';
import 'package:mealmate/widgets/carousels/dishes_carousel.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top,
          child: Column(
            children: [
              Container(
                height: 130,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 35, top: 40),
                      width: 300,
                      child: Text(
                        'Find Your Food To Healthy Lifestyle',
                        style: TextStyle(fontSize: 32, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      padding: EdgeInsets.only(top: 40),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(
                          right: 10,
                          left: 40,
                        ),
                        child: (TextField(
                          decoration: InputDecoration(
                            hintText: ('Search'),
                            icon: Icon(Icons.search),
                            fillColor: Colors.black,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              borderSide:
                                  BorderSide(width: 20, color: Colors.green),
                            ),
                          ),
                        )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 25),
                      child: IconButton(
                        icon: Icon(
                          Icons.filter_alt,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 170,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 33.5,
                        ),height: 150,width: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/student_main_menu.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      'Popular diets',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.popularDietsPage);
                      },
                      child: Text('View more',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: DietCarousel(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    child: Text(
                      'Popular meals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 40),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.popularMealsPage);
                      },
                      child: Text('View more',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: DishesCarousel(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
