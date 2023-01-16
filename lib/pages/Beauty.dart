

import 'package:e_commerce/ItemPages/itemPage.dart';
import 'package:flutter/material.dart';

import 'constant.dart';
class Beauty extends StatelessWidget {
   Beauty({Key? key}) : super(key: key);
List <String> price = [
'\$100',
'\$50',
'\$80',
'\$70',
'\$90',
'\$20',
'\$110',
'\$77',
'\$120',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
 appBar: AppBar(
  title: Text('Beauty Products',
  style: TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: KDefualtColor
  ),
  ),
  backgroundColor: Color(0xFFEDECF2),
  iconTheme: IconThemeData(color: KDefualtColor),
  elevation: 0,
 ),
      body: GridView.count(
        childAspectRatio: 0.68,
        
      // physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i = 0; i < 9; i++)
        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: KDefualtColor.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        '-50%',
                        style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>ItemPage(image: 'assets/beauty/$i.jpg', ProductTitle: 'Product Name', Total: price[i],)));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/beauty/$i.jpg',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                   'Product Name',
                    style: TextStyle(
                        fontSize: 15,
                        color: KDefualtColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Description of product',
                    style: TextStyle(fontSize: 10, color: KDefualtColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price[i],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: KDefualtColor),
                      ),
                      Icon(
                        Icons.shopping_cart_checkout,
                        color: KDefualtColor,
                      )
                    ],
                  ),
                )
              ],
            ),
            
          ),
      ],
      
    ));
  }
}