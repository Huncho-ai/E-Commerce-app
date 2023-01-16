import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CartItemsSamples extends StatelessWidget {
 CartItemsSamples({Key? key}) : super(key: key);

List <String> price = [
'\$50',
'\$20',
'\$120',
'\$90',
'\$110',
'\$110',
];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          for(int i = 0; i < 6; i++)
          Container(
            
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              
              children: [
                Radio(value: '', 
                groupValue: '',
                activeColor: KDefualtColor,
                onChanged: (index){}
                ),
                Container(
                  height: 50,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                 child: Image.asset('assets/cart/$i.jpg'),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Product Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: KDefualtColor
                    ), 
                    ),
                    SizedBox(height: 7,), 
                    Text(price[i],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    // Spacer(),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
    
                         Row(mainAxisAlignment: MainAxisAlignment.end,
                         crossAxisAlignment: CrossAxisAlignment.end,
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
                         )
                      ]
                    ),)
                  ],
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}