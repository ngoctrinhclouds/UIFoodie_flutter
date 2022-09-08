
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/welcome_screen.dart';

class SignUp extends StatefulWidget {
  static var routeName = '/screen';

  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();

}


class _SignUpState extends State<SignUp> {
  bool agree = false;

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text('Email',
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 16,
        //   fontWeight: FontWeight.bold
        // ),
        // ),
        // SizedBox(height: 10),
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
                // contentPadding: EdgeInsets.only(top: 2),
                // prefixIcon: Icon(Icons.person),
                hintText: '  Full Name',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        )
      ],
    );
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text('Email',
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 16,
        //   fontWeight: FontWeight.bold
        // ),
        // ),
        // SizedBox(height: 10),
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
                // contentPadding: EdgeInsets.only(top: 2),
                // prefixIcon: Icon(Icons.person),
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
        // Text('Email',
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 16,
        //   fontWeight: FontWeight.bold
        // ),
        // ),
        // SizedBox(height: 10),
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
                // contentPadding: EdgeInsets.only(top: 8),
                // prefixIcon: Icon(
                //   Icons.lock,
                // ),
                hintText: '  Password',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        )
      ],
    );
  }

  Widget buildConfirmPW() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Text('Email',
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 16,
        //   fontWeight: FontWeight.bold
        // ),
        // ),
        // SizedBox(height: 10),
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
                // contentPadding: EdgeInsets.only(top: 8),
                // prefixIcon: Icon(
                //   Icons.lock,
                // ),
                hintText: '  Confirm Password',
                hintStyle: TextStyle(color: Colors.black26)),
          ),
        )
      ],
    );
  }

  Widget buildAgree(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget> [
          Theme(
              data: ThemeData(unselectedWidgetColor: Colors.black26),
              child: Checkbox(
                value: agree,
                checkColor: Colors.white,
                activeColor: Colors.red,
                onChanged: (value){
                  setState((){
                    agree = value!;
                  });
                },
              ),
          ),
          Text('I agree to your ',
          style: TextStyle(
            color: Colors.black26
          ),
          ),
          Container(
            child: FlatButton(
              onPressed: () => print("privacy policy"),
              padding: const EdgeInsets.only(right: 0),
              child: const Text('privacy policy ',
                style: TextStyle(
                    color: Colors.red
                ),
              ),
            ),
          ),
          Text('and ',
            style: TextStyle(
                color: Colors.black26
            ),
          ),
          // Container(
          //   child: FlatButton(
          //     onPressed: () => print("terms & conditions"),
          //     padding: const EdgeInsets.only(right: 0),
          //     child: const Text('terms & conditions ',
          //       style: TextStyle(
          //           color: Colors.red
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget buildSignup() {
    return SizedBox(
      // padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => print('Sign up Pressed'),
        padding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.red,
        child: const Text(
          'Sign up',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildLogin() {
    return GestureDetector(
      onTap: () => print("Login Pressed"),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: 'Already an account, ',
            style: TextStyle(
              color: Colors.black26,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
              text: 'login',
              style: TextStyle(
                color: Colors.red,
                // fontSize: 18,
                fontWeight: FontWeight.w200,
              ))
        ]),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign up',
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
                // height: size.height,
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
                            "Register",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text('Create your new account'),
                          const SizedBox(height: 40),
                          buildName(),
                          const SizedBox(height: 20),
                          buildEmail(),
                          const SizedBox(height: 20),
                          buildPassword(),
                          const SizedBox(height: 20),
                          buildConfirmPW(),
                          const SizedBox(height: 20),
                          buildAgree(),
                          const SizedBox(height: 20),
                          buildSignup(),
                          // SizedBox(height: 1),
                          const SizedBox(height: 15),
                          buildLogin(),
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
