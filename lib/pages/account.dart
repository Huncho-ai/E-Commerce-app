import 'package:e_commerce/pages/About.dart';
import 'package:e_commerce/pages/constant.dart';
import 'package:e_commerce/pages/page.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple.withOpacity(0.5),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.10),
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(170),
                    bottomLeft: Radius.circular(70))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.shopping_cart,
                        size: 50, color: KDefualtColor),
                    radius: 50,
                  ),
                  SizedBox(height: 5,),
                  Text('Total Beauty Affairs',
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: size.width,
              height: 190,
              decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Privacy()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'Privacy',
                              style: TextStyle(),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (() {
                          showDialog(
                              barrierColor: Colors.purple.withOpacity(0.10),
                              context: context,
                              builder: ((context) => AlertDialog(
                                    title: const Text('App Version'),
                                    content: const Text('Version 2.1.0'),
                                    actions: <Widget>[
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            padding: const EdgeInsets.all(14),
                                            child: Text(
                                              "okay",
                                              style: TextStyle(
                                                  color: KDefualtColor),
                                            ),
                                          ))
                                    ],
                                  )));
                        }),
                        child: Row(
                          children: const [
                            Text('Version', style: TextStyle()),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text('Contact us', style: TextStyle()),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: size.width,
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const About()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'About',
                              style: TextStyle(),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            'Log Out',
                            style: TextStyle(),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
