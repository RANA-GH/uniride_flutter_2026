import 'package:flutter/material.dart';
import 'package:uniride/features/splash_pages/splash02_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Splash02Screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCF8307),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: MediaQuery.of(context).size.width * 0.35,
        ),
      ),
    );
  }
}
