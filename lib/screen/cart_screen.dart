import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_flutter/screen/payment_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
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
          onPressed: () {},
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
                      Colors.white,
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 400,
                    margin: EdgeInsets.only(top: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                ]),
                            width: 315,
                            height: 100,
                            child: Row(children: [
                              const Image(
                                  image: AssetImage("assets/images/img.png")),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 30),
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                            width: 155,
                                            child: Text('Fried Chocken')),
                                        Text(
                                          '2x',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 5, right: 60),
                                    child: Text(
                                      'Golden brown fried chicken',
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 20),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.red,
                                          size: 18,
                                        ),
                                        Text(
                                          ' 20.00',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                ]),
                            width: 315,
                            height: 100,
                            child: Row(children: [
                              const Image(
                                  image:
                                      AssetImage("assets/images/img_1.png")),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 50),
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                            width: 140,
                                            child: Text('Cheese Sandwich')),
                                        Text(
                                          '3x',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 5, right: 80),
                                    child: Text(
                                      'Grilled Cheese Sandwich',
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 40),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.red,
                                          size: 18,
                                        ),
                                        Text(
                                          ' 18.00',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 4,
                                      offset: Offset(0, 2))
                                ]),
                            width: 315,
                            height: 100,
                            child: Row(children: [
                              const Image(
                                  image:
                                      AssetImage("assets/images/img_2.png")),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: 10, right: 40),
                                    child: Row(
                                      children: const [
                                        SizedBox(
                                            width: 150,
                                            child: Text('Egg Pasta')),
                                        Text(
                                          '1x',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.only(top: 5, right: 100),
                                    child: Text(
                                      'Spicy Chicken Pasta',
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: 11),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, right: 30),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.red,
                                          size: 18,
                                        ),
                                        Text(
                                          ' 15.00',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 60),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 10,
                                offset: Offset(0, 2))
                          ]),
                      width: 300,
                      height: 140,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                            ),
                            child: Row(
                              children: const [
                                Text('Delivery Time'),
                                SizedBox(
                                  width: 110,
                                ),
                                Icon(
                                  Icons.access_time,
                                  color: Colors.red,
                                ),
                                Text(' 25 mins')
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(
                              right: 201,
                              top: 20,
                            ),
                            child: Text('Total price'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 15, right: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  color: Colors.red,
                                  size: 18,
                                ),
                                Text(
                                  '109.00',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  width: 90,
                                ),
                                ElevatedButton(
                                  onPressed: () => Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PaymentScreen(),
                                    ),
                                  ),
                                  child: Text('Place Order'),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.red),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
