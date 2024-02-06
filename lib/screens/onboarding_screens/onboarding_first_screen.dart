import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';

class OnboardingFirstScreen extends StatelessWidget {
  const OnboardingFirstScreen({Key? key}) : super(key: key);

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
                'assets/images/onboarding_first.png',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Find your Comfort and Healthy Food here',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Here You Can find a dish for every taste and color.           Enjoy!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.onboardingSecondScreen,
                  (_) => false,
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
