import 'package:e_commerce/pages/BottomNavBar.dart';
import 'package:e_commerce/pages/LoginScreen.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:e_commerce/pages/homepage.dart';
import 'package:e_commerce/pages/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      highlightColor: KDefualtColor
      ),
      home:  SplashScreen(),
    );
  }
}

