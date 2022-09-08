import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/signup_screen.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x00f4f4f4),
                      Color(0x00f4f4f4),
                      Color(0x00f4f4f4),
                      Color(0x00f4f4f4)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      // height: size.height * 0.75,
                      // width: size.width * 0.85,
                      child: Image.asset("assets/images/welcome.png"),
                    ),
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            height: 250,
                          ),
                          const Text(
                            'Welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.red,
                                fontSize: 25),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consect-\n etur adipiscing elit. Vivamus et felis \n dolor. Donec vitae facilisis velit.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(height: 80),
                          buildLogin(context),
                          const SizedBox(height: 20),
                          buildSignup(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogin(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 140),
          color: Colors.red,
          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => const Login(),
            ),
          ),
          child: const Text(
            'Login',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget buildSignup(BuildContext context) {
    return Container(
      child: FlatButton(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
        color: Colors.white,
        onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SignUp(),
            )),

        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.red,
          ),
        ),
        // textColor: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.red, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
