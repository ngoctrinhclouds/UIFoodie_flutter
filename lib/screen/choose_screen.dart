import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/payment_screen.dart';

class ChooseAddress extends StatefulWidget {
  static var routeName = '/screen';

  const ChooseAddress({Key? key}) : super(key: key);

  @override
  State<ChooseAddress> createState() => _ChooseAddressState();
}

class _ChooseAddressState extends State<ChooseAddress> {
  bool agree = false;
  bool agree1 = false;

  Widget buildMyhome() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('  My Home Address',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
                // textAlign: TextAlign.left,
              ),
              Text('Home',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text('(503) 338-5200 15612 Fisher Island Dr \n Miami Beach, Florida(FL), 33109',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.red, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              value: agree,
              checkColor: Colors.red,
              activeColor: Colors.red,
              onChanged: (value){
                setState((){
                  agree = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMyoffice() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(0, 2))
          ]),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('  My Office Address',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text('Office',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500
                ),
              ),
              Text('(503) 338-5200 15612 Fisher Island Dr \n Miami Beach, Florida(FL), 33109',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black26),
            child: Checkbox(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Colors.red, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
              value: agree1,
              checkColor: Colors.red,
              activeColor: Colors.red,
              onChanged: (value){
                setState((){
                  agree1 = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAddNew(BuildContext context) {
    return Container(
      child: FlatButton(
        // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
        color: Colors.white,
        onPressed: () {},
        // textColor: Colors.white,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.red, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),

        child: const Text(
          'Add New Address',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Widget buildDone(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlatButton(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 135),
          color: Colors.red,
          onPressed: (){},
          child: const Text(
            'Done',
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
          'Choose Address',
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
                          buildMyhome(),
                          SizedBox(height: 20),
                          buildMyoffice(),
                          SizedBox(height: 40),
                          buildAddNew(context),
                          SizedBox(height: 80),
                          buildDone(context)
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
