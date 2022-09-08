import 'package:flutter/material.dart';
import 'package:foodie_flutter/screen/cart_screen.dart';
import 'package:foodie_flutter/screen/choose_screen.dart';
import 'package:foodie_flutter/screen/login_screen.dart';
import 'package:foodie_flutter/screen/main_screen.dart';
import 'package:foodie_flutter/screen/payment_screen.dart';
import 'package:foodie_flutter/screen/signup_screen.dart';
import 'package:foodie_flutter/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MainScreen(),
      // home: const WelcomeScreen(),
      home: const CartScreen(),
    );
  }
}

