import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MealPage extends StatelessWidget {
  final String? image;
  final String? name;
  final String? author;
  final String? rating;
  final String? dietType;
  final String? difficulty;
  final String? cookDuration;
  final String? prepDuration;
  final String? serves;
  final String? kcal;
  final String? fat;
  final String? saturation;
  final String? carbs;
  final String? sugars;
  final String? fibre;
  final String? protein;
  final String? salt;
  final List? method;
  final List? ingredients;

  const MealPage({
    Key? key,
    this.image,
    this.name,
    this.author,
    this.rating,
    this.dietType,
    this.difficulty,
    this.cookDuration,
    this.prepDuration,
    this.serves,
    this.kcal,
    this.fat,
    this.saturation,
    this.carbs,
    this.sugars,
    this.fibre,
    this.protein,
    this.salt,
    this.method,
    this.ingredients,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    name.toString(),
                    style: TextStyle(
                      fontSize: 26,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                image.toString(),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Text(
                  author.toString(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: RatingBar.builder(
                  itemSize: 30,
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.timer,
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prep: ' + prepDuration.toString(),
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'Cook: ' + cookDuration.toString(),
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: ImageIcon(
                            AssetImage('assets/images/chef_hat.png'),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Difficulty: ' + difficulty.toString(),
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage('assets/images/dish.png'),
                      size: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Servings: ' + serves.toString(),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Nutrition per serving:')
              ]),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(),
                child: ListView(
                  padding: EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      child: Column(
                        children: [
                          Text('kcal:'),
                          Text(kcal.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('fat:'),
                          Text(fat.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('saturates:'),
                          Text(saturation.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('carbs:'),
                          Text(carbs.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('sugars:'),
                          Text(sugars.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('fibre:'),
                          Text(fibre.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('protein:'),
                          Text(protein.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    Padding(
                      child: Column(
                        children: [
                          Text('salt:'),
                          Text(salt.toString()),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Ingredients: ',
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SliverList.builder(
            itemCount: ingredients!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  ingredients![index],
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Text(
                  'Method: ',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SliverList.builder(
            itemCount: method!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(
                  method![index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
