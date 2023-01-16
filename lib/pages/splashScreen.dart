import 'package:e_commerce/pages/LoginScreen.dart';
import 'package:e_commerce/pages/SignUpScreen.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    const delay = Duration(seconds: 10);
    Future.delayed(delay, () => onTimer());
  }

  void onTimer() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (BuildContext context) {
        return Login();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.shopping_cart,
              size: 50,
              color: KDefualtColor,
            ),
            radius: 50,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'TOTAL BEAUTY AFFAIRS',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
