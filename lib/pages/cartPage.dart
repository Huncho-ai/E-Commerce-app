import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/CartBottomNavBar.dart';
import '../widgets/CartItemsSampleswidget.dart';
class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: KDefualtColor),
        title: Text('Cart',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: KDefualtColor
        ),
        ),
      ),
      body: Container(
        height: 700,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Color(0xFFEDECF2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          )
        ),
        child: ListView(
          children: [
            CartItemsSamples(),
            Container(
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10)
              // ),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: KDefualtColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(7),
                  child: Text(
                    'Add Coupon Code',
                    style: TextStyle(
                      color: KDefualtColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  ),)
                ],
              ),
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: CartBottomNavBar(),
    );
  }
}