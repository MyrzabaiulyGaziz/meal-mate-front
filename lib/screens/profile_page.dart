import 'package:flutter/material.dart';
import 'package:mealmate/screens/meal_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, dynamic>> _allFavorites = [
    {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Gaziz Myrzabaiuly',
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
            ),
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Myrzabaiuly Gaziz',
                textScaler: TextScaler.noScaling,
              ),
              background: Image.asset(
                'assets/images/img_photo_profile.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList.builder(
              itemCount: _allFavorites.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MealPage(
                          image: _allFavorites[index]['img_src'],
                          name: _allFavorites[index]['name'],
                          author: _allFavorites[index]['author'],
                          rating: _allFavorites[index]['rating'],
                          dietType: _allFavorites[index]['dietType'],
                          difficulty: _allFavorites[index]['difficulty'],
                          cookDuration: _allFavorites[index]['cookDuration'],
                          prepDuration: _allFavorites[index]['prepDuration'],
                          serves: _allFavorites[index]['serves'],
                          kcal: _allFavorites[index]['kcal'],
                          fat: _allFavorites[index]['fat'],
                          saturation: _allFavorites[index]['saturation'],
                          carbs: _allFavorites[index]['carbs'],
                          sugars: _allFavorites[index]['sugars'],
                          fibre: _allFavorites[index]['fibre'],
                          protein: _allFavorites[index]['protein'],
                          salt: _allFavorites[index]['salt'],
                          method: _allFavorites[index]['method'],
                          ingredients: _allFavorites[index]['ingredients'],
                        ),
                      ),
                    );
                  },
                  child: Card(
                      key: ValueKey(_allFavorites[index]['']),
                      child: Container(
                          margin: EdgeInsets.only(
                            left: 30,
                          ),
                          child: Row(
                            children: [
                              //image container
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white38,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          _allFavorites[index]['img_src'])),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              //text container
                              Expanded(
                                child: Container(
                                  width: double.maxFinite,
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 40,
                                      right: 20,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          _allFavorites[index]['name'],
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(width: 5),
                                            Column(
                                              children: [
                                                Text(
                                                  'Rating: ' +
                                                      _allFavorites[index]
                                                          ['rating'],
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ))),
                );
              }),
        ],
      ),
    );
  }
}
