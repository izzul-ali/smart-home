import 'package:flutter/material.dart';
import 'package:smart_home_app/screens/onboarding_screen.dart';

void main() {
  runApp(const SmartHomeApp());
}

class SmartHomeApp extends StatelessWidget {
  const SmartHomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home App',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const OnBoardingScreen(),
    );
  }
}
