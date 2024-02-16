import 'package:flutter/material.dart';

class MealTrackingPage extends StatefulWidget {
  const MealTrackingPage({Key? key}) : super(key: key);

  @override
  State<MealTrackingPage> createState() => _MealTrackingPageState();
}

class _MealTrackingPageState extends State<MealTrackingPage> {
  late final TextEditingController _name;
  late final TextEditingController _calories;
  late final TextEditingController _description;
  late final TextEditingController _protein;
  late final TextEditingController _fats;
  late final TextEditingController _carbs;

  @override
  void initState() {
    _name = TextEditingController();
    _calories = TextEditingController();
    _description = TextEditingController();
    _protein = TextEditingController();
    _fats = TextEditingController();
    _carbs = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _calories.dispose();
    _description.dispose();
    _protein.dispose();
    _fats.dispose();
    _carbs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Record Your Meal Here!',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _name,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter meal name',
                          suffixText: 'required'),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _calories,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter calories',
                        suffixText: 'required',
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _description,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter description',
                        suffixText: 'required',
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _protein,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter protein',
                        suffixText: 'required',
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _fats,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter fats',
                        suffixText: 'required',
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: _carbs,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter carbs',
                        suffixText: 'required',
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      top: 3,
                      left: 10,
                    ),
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Submit',
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
