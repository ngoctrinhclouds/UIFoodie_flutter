import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/payment_screen.dart';

class PaymentMothod extends StatefulWidget {
  static var routeName = '/screen';

  const PaymentMothod({Key? key}) : super(key: key);

  @override
  State<PaymentMothod> createState() => _PaymentMothodState();
}

class _PaymentMothodState extends State<PaymentMothod> {
  bool agree2 = false;
  bool agree3 = false;
  bool agree4 = false;

  Widget buildCredit() {
    return Container(
      alignment: Alignment.center,
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
          Text('  Credit, debit Card',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
            // textAlign: TextAlign.left,
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.red, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              value: agree2,
              checkColor: Colors.red,
              activeColor: Colors.red,
              onChanged: (value){
                setState((){
                  agree2 = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPaypal() {
    return Container(
      alignment: Alignment.center,
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
          Text('  Paypal',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
            // textAlign: TextAlign.left,
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.red, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              value: agree3,
              checkColor: Colors.red,
              activeColor: Colors.red,
              onChanged: (value){
                setState((){
                  agree3 = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCash() {
    return Container(
      alignment: Alignment.center,
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
          Text('  Cash on Delivery',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
            // textAlign: TextAlign.left,
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.red, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              value: agree4,
              checkColor: Colors.red,
              activeColor: Colors.red,
              onChanged: (value){
                setState((){
                  agree4 = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }


  Widget buildNext(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
          color: Colors.red,
          onPressed: (){},
          child: const Text(
            'Next',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Method',
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
              builder: (context) => const PaymentScreen(),
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
                          horizontal: 25, vertical: 120),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          buildCredit(),
                          SizedBox(height: 20),
                          buildPaypal(),
                          SizedBox(height: 20),
                          buildCash(),
                          SizedBox(height: 80),
                          buildNext(context)
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
