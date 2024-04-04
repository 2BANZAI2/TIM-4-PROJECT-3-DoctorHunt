// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

// import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

     ///Wait 3 seconds and navigate to home page
     //Timer(Duration(seconds: 3), () {
       //Navigator.pushReplacement(
         //context,
         //MaterialPageRoute(builder: (context) => OnboardingScreen1()),
       //);
     //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Blurred background image
          ImageFiltered(
            imageFilter: ImageFilter.blur(
                sigmaX: 5.0, sigmaY: 5.0), // Adjust blur intensity
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/bg.jpg'), // Replace with your background image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Centered content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  scale: 1.0,
                ),
                SizedBox(height: 120.0),
                Text(
                  'Doctor Hunt',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}