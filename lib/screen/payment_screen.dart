import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/cart_screen.dart';
import 'package:foodie_flutter/screen/choose_screen.dart';
import 'package:foodie_flutter/screen/payment_method_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  Widget buildChooseAddress() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('  Choose Address',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500
          ),
          ),
          IconButton(
              onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ChooseAddress(),
            ),
          ),
              icon: Icon(Icons.arrow_forward_ios),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  Widget buildPaymentMothod() {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('  Payment Method',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
          IconButton(
            onPressed: ()=> Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentMothod(),
              ),
            ),
            icon: Icon(Icons.arrow_forward_ios),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Payment',
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
              builder: (context) => const CartScreen(),
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
              // Container(
              //   height: double.infinity,
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //       colors: [
              //         Colors.white,
              //         Colors.white,
              //         Colors.white,
              //         Colors.white
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                // height: size.height,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildChooseAddress(),
                          SizedBox(height: 20),
                          buildPaymentMothod()
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
