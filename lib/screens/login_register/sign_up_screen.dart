import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img_39984414944_1.png'),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                child: Text('Create an account'),
              ),
              Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    width: 290,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        hintText: 'Write your email or login',
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
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        hintText: 'Password',
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
                    height: 40,
                    child: Stack(children: [
                      TextField(
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
                          hintText: 'Verify password',
                          fillColor: Colors.black,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(14),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: IconButton(
                            onPressed: () {
                              setState(() {});
                            },
                            icon: Icon(Icons.visibility_outlined)),
                        top: -3,
                        right: 0,
                      )
                    ]),
                  ),
                  SizedBox(height: 30),
                  Column(children: [
                    Container(
                      child: Text('Or continue with'),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/img_googleicon_1.svg'),
                                ),
                              ),
                            ),
                          ),
                          Text('Google'),
                        ],
                      ),
                    ),
                  ]),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.signInScreen,
                        (_) => false,
                      );
                    },
                    child: Column(children: [
                      Text('Already have an account?'),
                      Text('Login here!')
                    ]),
                  ),
                  FilledButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xff53E88B),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutes.bioPageScreen,
                          (_) => false,
                        );
                      },
                      child: Text('Register'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
