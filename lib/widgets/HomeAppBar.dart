import 'package:badges/badges.dart';
import 'package:e_commerce/pages/cartPage.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
 const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            
           
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Total Beauty Affairs',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: KDefualtColor),
              ),
            ),
            const Spacer(),
            Badge(
              badgeColor: Colors.red,
              badgeContent: const Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => CartPage())));
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 32,
                  color: KDefualtColor,
                ),
              ),
            ),
          
          ],
        ),
        
      ),
    );
  }
}
