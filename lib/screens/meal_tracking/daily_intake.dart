import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class DailyIntake extends StatefulWidget {
  const DailyIntake({Key? key}) : super(key: key);

  @override
  State<DailyIntake> createState() => _DailyIntakeState();
}

class _DailyIntakeState extends State<DailyIntake>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              top: 40,
              left: 110,
            ),
            child: Text(
              'Daily Intake',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Text(
                'Water',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.minimize),
                  ),
                  Image.asset(
                    'assets/images/empty_bottle.png',
                    width: 150,
                    height: 150,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Meals',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.mealTrackingPage);
                  },
                  icon: Icon(Icons.add),
                ),
                Text(
                  'Add Meal',
                  style: TextStyle(fontSize: 18),
                )
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Daily intake of kcal:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
