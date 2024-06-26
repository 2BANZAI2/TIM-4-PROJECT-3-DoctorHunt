import 'package:doctorhunt/Screen_page/OnboardingScreen1.dart';
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
      title: 'Doctor Hunt',  
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0x000ebe7e)),
        useMaterial3: true,
      ),
      home: OnboardingScreen1(),
    );
  }
}
