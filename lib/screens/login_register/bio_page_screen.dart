import 'package:flutter/material.dart';
import 'package:mealmate/services/user_service.dart';

class BioPageScreen extends StatefulWidget {
  const BioPageScreen({Key? key}) : super(key: key);

  @override
  State<BioPageScreen> createState() => _BioPageScreenState();
}

class _BioPageScreenState extends State<BioPageScreen> {
  final firstNameController = TextEditingController();

  final lastNameController = TextEditingController();

  final ageController = TextEditingController();

  Future<void> updateUser() async {
    setState(() {
      loading = true;
    });
    final firstName = firstNameController.text.trim();
    final lastName = lastNameController.text.trim();
    final age = int.tryParse(ageController.text.trim());

    final result = await UserService.update(
      firstName: firstName.isNotEmpty ? firstName : null,
      lastName: lastName.isNotEmpty ? lastName : null,
      age: age,
    );
    result.fold(
      (l) {
        setState(() {
          loading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l)));
      },
      (_) {
        Navigator.of(context).pop();
      },
    );
  }

  bool loading = false;

  @override
  void initState() {
    super.initState();
  }

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
                  controller: firstNameController,
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
                  controller: lastNameController,
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
                  controller: ageController,
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
                onPressed: updateUser,
                child: loading ? CircularProgressIndicator() : Text('Next'),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Color(0xff53E88B),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
