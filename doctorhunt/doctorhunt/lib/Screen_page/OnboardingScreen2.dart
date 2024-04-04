// ignore_for_file: prefer_const_constructors

import 'package:doctorhunt/Screen_page/OnboardingScreen3.dart';
import 'package:doctorhunt/Screen_page/main_layout.dart';
import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "images/elip2.png",
                scale: 1.2,
                fit: BoxFit.contain,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  // Display the onboarding image
                  Image.asset(
                    'images/onboarding2.png', // Replace with your image path
                    scale: 1.2,
                  ),
                  SizedBox(height: 20),

                  // Add onboarding text with appropriate spacing
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43.0),
                    child: Text(
                      'Choose Best Doctors',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43.0),
                    child: Text(
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  SizedBox(height: 30), // Adjust spacing as needed

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43.0),
                    child: Container(
                      width: double.infinity, // Match parent width
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(
                            10)), // Remove rounded corners for rectangle
                        color: const Color(0xFF0EBE7F), // Set green color
                      ),
                      child: TextButton(
                        child: Text('Next'),
                        onPressed: () {
                          // Navigate to OnboardingScreen3
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnboardingScreen3(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 43.0),
                    child: TextButton(
                      onPressed: () {
                        // Navigate to OnboardingScreen3
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainLayout(),
                          ),
                        );
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
