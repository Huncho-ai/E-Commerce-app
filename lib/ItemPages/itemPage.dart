import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../ItemAppBar.dart';
import '../pages/ItemBottomNavBar.dart';
class ItemPage extends StatelessWidget {
  List <Color> Clrs = [
Colors.red,
Colors.green,
Colors.blue,
Colors.indigo,
Colors.orange 
  ];
  ItemPage({Key? key, required this.image, required this.ProductTitle, required this.Total}) : super(key: key);

final String image;
final String ProductTitle;
final String Total;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: KDefualtColor),
          backgroundColor: Color(0xFFEDECF2),
          elevation: 0,
          title: Text('Product',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: KDefualtColor
          ),),
      ),
     body: Container(
      color: Color(0xFFEDECF2),
       child: ListView(
        children: [
Padding(
  padding: const EdgeInsets.all(16.0),
  child:   Container(
    height: 300,
    width: MediaQuery.of(context).size.width,
  child: Image.asset(image),
  ),
),
Padding(
  padding: const EdgeInsets.only(top: 50, bottom: 20),
  child:   Container(
    decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
         topRight: Radius.circular(40)
       )),
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 1),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Text(ProductTitle,
    style: TextStyle(
        color: KDefualtColor,
        fontSize: 25,
        fontWeight: FontWeight.bold
    ),),
         ),
    SizedBox(height: 10,),
    Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
 RatingBar.builder(
  initialRating: 4,
  minRating: 1,
  direction: Axis.horizontal,
  itemCount: 5,
  itemSize: 25,
  itemPadding: EdgeInsets.symmetric(horizontal: 4),
  itemBuilder: (context, _) =>Icon(
    Icons.favorite,
    color: Colors.red.shade800
  ), onRatingUpdate: (index) {  },
 ),
 
  ],
),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              padding:EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Icon(CupertinoIcons.minus, size:20,),
               ),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '01',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: KDefualtColor
                  ),
                ),
               ),
               Container(
              padding:EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                  )
                ]
              ),
              child: Icon(CupertinoIcons.plus, size:20,),
               ),
        ],
       ),
     ),
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 20),
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('Lorem ipsum dolor sit amet, tempor suscipiantur no per. Te laudem reformidans his. Dolore quaeque urbanitas ius an, mea dico labores deseruisse et. Ea his docendi deleniti prodesset, animal fastidii dissentias ea quo.',
         textAlign: TextAlign.justify,
         style: TextStyle(
          color: KDefualtColor,
          fontSize: 15
         ),),
       ),
     ),
     Padding(
      padding:EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Size:',
            style: TextStyle(
              fontSize: 18,
              color: KDefualtColor,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(width: 10,),
          Row(
            children: [
              for(int i = 1; i < 6; i++)
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                    )
                  ]
                ),
                child: Text(
                  i.toString() , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KDefualtColor),),
              )
            ],
          ),
        ],
      ), ),
      
     Padding(
      padding:EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Color:',
            style: TextStyle(
              fontSize: 18,
              color: KDefualtColor,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(width: 10,),
          Row(
            children: [
              for(int i = 0; i < 5; i++)
              Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Clrs[i],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                    )
                  ]
                ),
              
              )
            ],
          ),
        ],
      ), ),
      ],
    )
  ),
),
        ],
       ),
     ),
     bottomNavigationBar: BottomAppBar(elevation: 0,
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
    )
    );
  }
}