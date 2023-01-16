import 'package:badges/badges.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CategoriesWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';
import 'cartPage.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 500,
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35)
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child:Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...'
                          ),
                        ),
                      ),
                      const Spacer(),
                      Icon(Icons.search,
                      size: 25,
                      color: KDefualtColor,)
                    ],
                  ) ,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    vertical: 20, 
                    horizontal: 10
                  ),
                  child: Text('Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: KDefualtColor
                  ),),
                ),

                CategoriesWidget(),
                Container(
                  alignment:Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(vertical:20, horizontal: 10 ),
                  child: Text(
                    'Best Selling',
                    style:TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: KDefualtColor    
                    ) ,),
                ),
                ItemsWidget()
              ],
            ),
          )
        ],
      ),
      
    );
  }
}