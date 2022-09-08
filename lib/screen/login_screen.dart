import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/welcome_screen.dart';

class Login extends StatefulWidget {
  static var routeName = '/screen';

  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();

}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
            ]),
        height: 45,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '  Email or Phone',
              hintStyle: TextStyle(color: Colors.black26)),
        ),
      )
    ],
  );
}

Widget buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
            ]),
        height: 45,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '  Password',
              hintStyle: TextStyle(color: Colors.black26)),
        ),
      )
    ],
  );
}

Widget buildForgotPass() {
  return Container(
    alignment: Alignment.centerRight,
    child: FlatButton(
      onPressed: () => print("Forgot Your Password"),
      padding: const EdgeInsets.only(right: 0),
      child: const Text(
        'Forgot your password?',
        style: TextStyle(
          color: Colors.red,
          fontSize: 12,
          fontWeight: FontWeight.w100,
        ),
      ),
    ),
  );
}

Widget buildLogin() {
  return SizedBox(
    // padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
      elevation: 5,
      onPressed: () => print('Login Pressed'),
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.red,
      child: const Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget buildSignup() {
  return GestureDetector(
    onTap: () => print("Sign Up Pressed"),
    child: RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account, ',
          style: TextStyle(
            color: Colors.black26,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Colors.red,
              // fontSize: 18,
              fontWeight: FontWeight.w200,
            ))
      ]),
    ),
  );
}


class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          // textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/abc.png",
            width: 150,
          ),
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const WelcomeScreen(),
            ),
          ),
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
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
                      Colors.white,
                      Colors.white,
                      Colors.white,
                      Colors.white
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
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            "Welcome Back",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text('Login to your account'),
                          const SizedBox(height: 40),
                          buildEmail(),
                          const SizedBox(height: 20),
                          buildPassword(),
                          buildForgotPass(),
                          const SizedBox(height: 20),
                          buildLogin(),
                          // SizedBox(height: 1),
                          const SizedBox(height: 15),
                          buildSignup(),
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
}
