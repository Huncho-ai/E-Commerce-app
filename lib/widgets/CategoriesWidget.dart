import 'package:e_commerce/pages/Beauty.dart';
import 'package:e_commerce/pages/Fashion.dart';
import 'package:e_commerce/pages/Health.dart';
import 'package:e_commerce/pages/cartPage.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/material.dart';
 class CategoriesWidget extends StatelessWidget {
    CategoriesWidget({Key? key}) : super(key: key);
 List <String> wo = [
  'Beauty',
  'Fashion',
  'Health',
 ];
List <Widget> dd =[
  Beauty(),
 Fashion(),
 Health()
];
 
   @override
   Widget build(BuildContext context) {
     return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i = 0; i < 3; i++)
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => dd[i]));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/category/$i.jpg',
                  width: 40,
                  height: 40,),
                  Text(
                    wo[i],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: KDefualtColor
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
     );
   }
 }