import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';
import 'package:mealmate/widgets/carousels/diet_carousel.dart';
import 'package:mealmate/widgets/carousels/dishes_carousel.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  final List<Map<String, dynamic>> _allFavorites = [
    {
      'id': '1',
      "img_src": "assets/images/vegetarian-lasagne.jpg",
      "name": "Vegetarian lasagne",
      "rating": "5.0",
      'author': 'Emma Lewis',
      'dietType': 'Vegan',
      'difficulty': 'Easy',
      'cookDuration': '1 hour 10 mins',
      'prepDuration': '25 mins',
      'serves': '6',
      'kcal': '461',
      'fat': '29g',
      'saturation': '9g',
      'carbs': '37g',
      'sugars': '14g',
      'fibre': '5g',
      'protein': '13g',
      'salt': '0.6g',
      'method': [
        'STEP 1:To make the tomato sauce, heat the olive oil in a saucepan. Add the onions, garlic and carrot. Cook for 5-7 mins over a medium heat until softened. Turn up the heat a little and stir in the tomato purée. Cook for 1 min, pour in the white wine, then cook for 5 mins until this has reduced by two-thirds. Pour over the chopped tomatoes and add the basil leaves. Bring to the boil then simmer for 20 mins. Leave to cool then whizz in a food processor. Will keep, cooled, in the fridge for up to three days or frozen for three months.',
        'STEP 2:To make the white sauce, melt the butter in a saucepan, stir in the plain flour, then cook for 2 mins. Slowly whisk in the milk, then bring to the boil, stirring. Turn down the heat, then cook until the sauce starts to thicken and coats the back of a wooden spoon. Will keep, cooled, in the fridge for up to three days or frozen for three months.',
        'STEP 3:Heat the oven to 200C/180C fan/gas 6. Lightly oil two large baking trays and add the peppers and aubergines. Toss with the olive oil, season well, then roast for 25 mins until lightly browned.',
        'STEP 4:Reduce the oven to 180C/160C fan/gas 4. Lightly oil a 30 x 20cm ovenproof dish. Arrange a layer of the vegetables on the bottom, then pour over a third of the tomato sauce. Top with a layer of lasagne sheets, then drizzle over a quarter of the white sauce. Repeat until you have three layers of pasta.',
        'STEP 5:Spoon the remaining white sauce over the pasta, making sure the whole surface is covered, then scatter over the mozzarella and cherry tomatoes. Bake for 45 mins until bubbling and golden.',
      ],
      'ingredients': [
        '3 red peppers, cut into large chunks',
        '2 aubergines, cut into ½ cm thick slices',
        '8 tbsp olive oil, plus extra for the dish',
        '300g lasagne sheets',
        '125g mozzarella',
        'handful cherry tomatoes, halved',
        'For the tomato sauce:',
        '1 tbsp olive oil',
        '2 onions, finely chopped',
        '2 garlic cloves, sliced',
        '1 carrot, roughly chopped',
        '2 tbsp tomato purée',
        '200ml white wine',
        '3 x 400g cans chopped tomatoes',
        '1 bunch of basil, leaves picked',
        'For the white sauce:',
        '85g butter',
        '85g plain flour',
        '750ml milk',
      ]
    },
    {
      'id': '2',
      "img_src":
          "assets/images/piri-piri-chicken-with-smashed-sweet-potatoes-broccol.jpg",
      "name": "Piri-piri chicken with smashed sweet potatoes & broccoli",
      "rating": "5.0",
      'author': 'Cassie Best',
      'dietType': 'None',
      'difficulty': 'Easy',
      'cookDuration': '55 mins',
      'prepDuration': '20 mins',
      'serves': '3',
      'kcal': '662',
      'fat': '23g',
      'saturation': '6g',
      'carbs': '74g',
      'sugars': '40g',
      'fibre': '15g',
      'protein': '32g',
      'salt': '2.1g',
      'method': [
        'STEP 1: Heat the oven to 180C/160C fan/gas 4. Toss the sweet potatoes with a generous drizzle of oil and some seasoning, and tip into a very large roasting tin. Push the potatoes to one end of the tin, then, in the other end, toss the chicken with the onions, spice mix, a drizzle of oil and some seasoning. Roast for 40 mins, stirring everything halfway through. Add the broccoli to the tin, drizzle with a little oil and season, then roast for 10-15 mins more.',
        'STEP 2: Remove the chicken, onions and broccoli from the tin. Roughly mash the potatoes using a fork, making sure you incorporate all the chicken juices and spices from the pan. Spread the mash over the base of the tin, then top with the broccoli, chicken and onions and serve from the tin in the middle of the table.',
      ],
      'ingredients': [
        '3 large sweet potatoes (about 900g), peeled and cut into large chunks',
        'oil, for drizzling',
        '6-8 chicken thighs, skin left on',
        '2 red onions, cut into wedges',
        '25g sachet piri-piri spice mix (or a mild version, if you like)',
        '300g long-stem broccoli',
      ],
    },
    {
      'id': '3',
      "img_src": "assets/images/oven-baked-risotto.jpg",
      "name": "Oven-baked risotto",
      "rating": "5.0",
      'author': 'Good Food team',
      'dietType': 'None',
      'difficulty': 'Easy',
      'cookDuration': '25 mins',
      'prepDuration': '7 mins',
      'serves': '4',
      'kcal': '517',
      'fat': '20g',
      'saturation': '10g',
      'carbs': '63g',
      'sugars': '0g',
      'fibre': '2g',
      'protein': '22g',
      'salt': '3.8g',
      'method': [
        'STEP 1: Heat oven to 200C/fan 180C/gas 6. Fry the bacon pieces in an ovenproof pan or casserole dish for 3-5 mins until golden and crisp. Stir in the onion and butter and cook for 3-4 mins until soft. Tip in the rice and mix well until coated. Pour over the wine if using and cook for 2 mins until absorbed.',
        'STEP 2: Add the cherry tomatoes and the hot stock, then give the rice a quick stir. Cover with a tightly fitting lid and bake for 18 mins until just cooked. Stir through most of the parmesan and serve sprinkled with the remainder.',
      ],
      'ingredients': [
        '250g pack smoked bacon, chopped into small pieces',
        '1 onion, chopped',
        '25g butter',
        '300g risotto rice',
        'half a glass of white wine (optional)',
        '150g pack cherry tomatoes, halved',
        '700ml hot chicken stock (from a cube is fine)',
        '50g parmesan, grated',
      ],
    },
    {
      'id': '4',
      "img_src": "assets/images/spicy-root-lentil-casserole.jpg",
      "name": "Spicy root & lentil casserole",
      "rating": "5.0",
      'author': 'Good Food team',
      'dietType': 'Vegetarian',
      'difficulty': 'Easy',
      'cookDuration': '35 mins',
      'prepDuration': '10 mins',
      'serves': '4',
      'kcal': '378',
      'fat': '9g',
      'saturation': '1g',
      'carbs': '64g',
      'sugars': '0g',
      'fibre': '10g',
      'protein': '14g',
      'salt': '1.24g',
      'method': [
        'STEP 1: Heat the oil in a large pan and cook the onion and garlic over a medium heat for 3-4 minutes until softened, stirring occasionally. Tip in the potatoes, carrots and parsnips, turn up the heat and cook for 6-7 minutes, stirring, until the vegetables are golden.',
        'STEP 2: Stir in the curry paste or powder, pour in the stock and then bring to the boil. Reduce the heat, add the lentils, cover and simmer for 15-20 minutes until the lentils and vegetables are tender and the sauce has thickened.',
        'STEP 3: Stir in most of the coriander, season and heat for a minute or so.Top with yogurt and the rest of the coriander. Serve with naan bread.',
      ],
      'ingredients': [
        '2 tbsp sunflower or vegetable oil',
        '1 onion, chopped',
        '2 garlic clove, crushed',
        '700g potatoes, peeled and cut into chunks',
        '4 carrot, thickly sliced',
        '2 parsnip, thickly sliced',
        '2 tbsp curry paste or powder',
        '1 litre/1¾ pints vegetable stock',
        '100g red lentils,a small bunch of fresh coriander, roughly chopped',
        'low-fat yogurt and naan bread, to serve',
      ],
    },
    {
      'id': '5',
      "img_src": "assets/images/chocolate-fudge-cake-.jpg",
      "name": "Easy chocolate fudge cake",
      "rating": "5.0",
      'author': 'Misskay',
      'dietType': 'Vegetarian',
      'difficulty': 'Easy',
      'cookDuration': '30 mins',
      'prepDuration': '25 mins',
      'serves': '8',
      'kcal': '608',
      'fat': '33g',
      'saturation': '11g',
      'carbs': '69g',
      'sugars': '52g',
      'fibre': '2g',
      'protein': '7g',
      'salt': '0.7g',
      'method': [
        'STEP 1: Heat the oven to 180C/160C fan/gas 4. Oil and line the base of two 18cm sandwich tins. Sieve the flour, cocoa powder and bicarbonate of soda into a bowl. Add the caster sugar and mix well.',
        'STEP 2: Make a well in the centre and add the golden syrup, eggs, sunflower oil and milk. Beat well with an electric whisk until smooth.',
        'STEP 3: Pour the mixture into the two tins and bake for 25-30 mins until risen and firm to the touch. Remove from oven, leave to cool for 10 mins before turning out onto a cooling rack.',
        'STEP 4: To make the icing, beat the unsalted butter in a bowl until soft. Gradually sieve and beat in the icing sugar and cocoa powder, then add enough of the milk to make the icing fluffy and spreadable.',
        'STEP 5: Sandwich the two cakes together with the butter icing and cover the sides and the top of the cake with more icing.',
      ],
      'ingredients': [
        '150ml sunflower oil, plus extra for the tin',
        '175g self-raising flour',
        '2 tbsp cocoa powder',
        '1 tsp bicarbonate of soda',
        '150g caster sugar',
        '2 tbsp golden syrup',
        '2 large eggs,lightly beaten',
        '150ml semi-skimmed milk',
        'For the icing:',
        '100g unsalted butter',
        '225g icing sugar',
        '40g cocoa powder',
        '2½ tbsp milk (a little more if needed)',
      ],
    },
  ];

  List<Map<String, dynamic>> _foundMeals = [];

  @override
  void initState() {
    _foundMeals = _allFavorites;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allFavorites;
    } else {
      results = _allFavorites
          .where((meal) =>
              meal["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundMeals = results;
    });
  }

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
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            AppRoutes.notificationPage,
                          );
                        },
                      ),
                      padding: EdgeInsets.only(top: 40),
                    ),
                  ],
                ),
              ),
              Row(children: [
                Column(children: [
                  Container(
                      height: 50,
                      width: 300,
                      padding: EdgeInsets.only(
                        right: 10,
                        left: 40,
                      ),
                      child: TextField(
                        onChanged: (value) => _runFilter(value),
                        decoration: InputDecoration(
                          hintText: ('Search'),
                          suffixIcon: Icon(Icons.search),
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
                  // Expanded(
                  //     child: _foundMeals.isNotEmpty
                  //         ? Container(
                  //             width: 280,
                  //             height: 10,
                  //             child: ListView.builder(
                  //               itemCount: _foundMeals.length,
                  //               itemBuilder: (context, index) {
                  //                 Card(
                  //                   key: ValueKey(_foundMeals[index]['id']),
                  //                   elevation: 14,
                  //                   margin: const EdgeInsets.symmetric(
                  //                       vertical: 10),
                  //                   child: ListTile(
                  //                     leading: Text(
                  //                       _foundMeals[index]['id'].toString(),
                  //                       style: TextStyle(
                  //                         fontSize: 24,
                  //                       ),
                  //                     ),
                  //                     title: Text(_foundMeals[index]['name']),
                  //                     subtitle: Text(
                  //                         '${_foundMeals[index]['author'].toString()}'),
                  //                   ),
                  //                 );
                  //                 return null;
                  //               },
                  //             ),
                  //           )
                  //         : const Text('No results found')),
                ]),
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
              ]),
              Container(
                height: 180,
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
                        ),
                        height: 150,
                        width: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/main_menu_student.png'),
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
                        )),
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
