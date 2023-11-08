import 'dart:async';

import 'package:flutter/material.dart';
import 'package:snali/View/CustamWidget/textcustam.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacementNamed(context, '/OnboardingScreen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffbd30),
              image: DecorationImage(
                  image: AssetImage('images/splichpic.png'), fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: 10,
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(),
                Column(
                  children: [
                    Image.asset('images/logo.png'),
                    Textcustam(
                      text: 'Snail.',
                      size: 24,
                      weight: FontWeight.w700,
                    )
                  ],
                ),
                Textcustam(
                  text: 'Version : 1.0',
                  size: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
