import 'package:flutter/material.dart';

class MealTrackingPage extends StatelessWidget {
  const MealTrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 40,
              left: 15,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
            ),
            Positioned(
              top: 85,
              left: 50,
              child: Text(
                'Record Your Meal Here!',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 35,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 250,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('Meal Name'),
                      ),
                    ),
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('How many calories?'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 300,
              left: 35,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.2,
                height: 250,
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('Protein'),
                      ),
                    ),
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('Carbs'),
                      ),
                    ),
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('Fibre'),
                      ),
                    ),
                    TextField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        hintText: ('Fats'),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
