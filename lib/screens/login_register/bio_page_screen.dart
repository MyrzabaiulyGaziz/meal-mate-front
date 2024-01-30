import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class BioPageScreen extends StatelessWidget {
  const BioPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: 40,
          left: 20,
          child: Container(
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 45,
          child: Container(
            child: Text(
              'Fill in your bio to get started',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Positioned(
          top: 120,
          left: 50,
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                width: 290,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: 'First Name',
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: 'Second Name',
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: 'Age',
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: 'Weight',
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 290,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    hintText: 'Height',
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AppRoutes.uploadPhotoScreen);
                },
                child: Text(
                  'Next',
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xff53E88B),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
