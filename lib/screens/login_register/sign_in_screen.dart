import 'package:flutter/material.dart';
import 'package:mealmate/routes/app_routes.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                child: Text('Login To Your Account'),
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
                                      'assets/images/google_icon.png'),
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
                    onPressed: () {},
                    child: Text('Forgot your password?'),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutes.signUpScreen,
                          (_) => false,
                        );
                      },
                      child: Text('Don\'t have an account? Register here!')),
                  FilledButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Color(0xff53E88B),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          AppRoutes.navigationBottomBar,
                          (_) => false,
                        );
                      },
                      child: Text('Login'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
