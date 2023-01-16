import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ItemBottomNavBar extends StatelessWidget {
   ItemBottomNavBar({Key? key, required this.Total}) : super(key: key);
 
 final String Total;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(elevation: 0,
      child: Container(
        height: 105,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Total,
               style: TextStyle(
                fontSize: 25, 
                fontWeight: FontWeight.bold),),
                ElevatedButton.icon(onPressed: (){}, 
                icon: Icon(CupertinoIcons.cart_badge_plus),
                label: Text(
                  'Add To Cart',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(KDefualtColor),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    )
                  )
                   ),
                  
          ],
          
        ),
      ),
    );
  }
}