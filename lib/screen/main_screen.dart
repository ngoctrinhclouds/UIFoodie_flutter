import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      // height: size.height,
      // width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            top: 0,
            // height: size.height * 0.75,
            // width: size.width * 1,
            child: Image.asset("assets/images/main_screen.png"),
          ),
        ],
      ),
    );
  }
}
