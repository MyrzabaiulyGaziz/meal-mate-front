import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 70),
              child: Image.asset(
                'assets/images/onboarding_second.png',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Track what you eat!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              'Reach your goals!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Enjoy an easy and simple way to get healthy!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.signInScreen,
                  (route) => false,
                );
              },
              child: Text('Next'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xff53E88B)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
