import 'package:flutter/material.dart';
import 'package:foodie_flutter/screen/choose_screen.dart';
import 'package:foodie_flutter/screen/login_screen.dart';
import 'package:foodie_flutter/screen/payment_method_screen.dart';
import 'package:foodie_flutter/screen/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (context) => const Login(),
  SignUp.routeName: (context) => const SignUp(),
  ChooseAddress.routeName: (context) => const ChooseAddress(),
  PaymentMothod.routeName: (context) => const PaymentMothod(),
};