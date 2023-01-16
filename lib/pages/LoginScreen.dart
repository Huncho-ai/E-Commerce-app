import 'package:e_commerce/pages/BottomNavBar.dart';
import 'package:e_commerce/pages/SignUpScreen.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:e_commerce/pages/homepage.dart';
import 'package:flutter/material.dart';
class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
final emailController = TextEditingController();
  final passwordController = TextEditingController();
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFFEDECF2),
      body: SafeArea(child: 
      Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.purple,
            child: Icon(Icons.shopping_cart, size: 40,color: Colors.white,)
          ),
          const SizedBox(height: 50,),
          const Text('TOTAL BEAUTY AFFAIRS',
              style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,
              ),
              const SizedBox(height: 50,),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder (
                        borderSide: BorderSide(color: KDefualtColor),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: 'Email',
                         
                      fillColor: Colors.grey[200],
                      filled: true
                    ),
                  ),
                  ),
                    const SizedBox(height: 10,),
                    
                   Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder (
                        borderSide: BorderSide(color: KDefualtColor),
                        borderRadius: BorderRadius.circular(12),),
                      hintText: 'Password',
                      fillColor: Colors.grey[200],
                      filled: true
                    ),
                  ),
                  ),
                  const SizedBox(height: 10,),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         GestureDetector(
                          onTap: (){
                        
                          },
                           child:  Text('Forgot Password?',style: TextStyle(
                              color: KDefualtColor,
                              fontWeight: FontWeight.bold
                                                   ),),
                         ),
                      ],
                    ), 
                  ),
               const   SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GestureDetector(
                    onTap:(){
Navigator.push(context, MaterialPageRoute(builder: (context) => Bottom()));
                    },
                    child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: KDefualtColor,
                      borderRadius: BorderRadius.circular(12),
                    ),  
                    child: const Center(
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                     ),
                  ),
                  ),
                  const SizedBox(height: 25,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      const Text('Not a member?',style: TextStyle(
                        fontWeight: FontWeight.bold
                        ),
                        ),
                      const SizedBox(width: 3,),
                    
                         
                         GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                          },
                           child:  Text('Register now',style: TextStyle(
                            color: 
                            KDefualtColor,
                            fontWeight: FontWeight.bold
                                                 ),
                                                 ),
                         ),
                      
                    ],
                  )
           
            ],
          ),
        
       ),
      ));
   
  }
}