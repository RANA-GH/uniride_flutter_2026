import 'package:flutter/material.dart';
import 'package:uniride/pages/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFCF8307),
      body: Center(
        child: Image.asset(
          'lib/image/logo.png',
          width: screenWidth * 0.47,
          height: screenHeight * 0.47 * (193 / 176.73),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
