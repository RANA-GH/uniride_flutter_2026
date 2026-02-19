import 'package:flutter/material.dart';
import 'package:uniride/pages/onboarding_pages/presentation/widgets/onboarding_widget.dart';

class Onboarding01Screen extends StatefulWidget {
  const Onboarding01Screen({super.key});

  @override
  State<Onboarding01Screen> createState() => _Onboarding01ScreenState();
}

class _Onboarding01ScreenState extends State<Onboarding01Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 222 , left: 32 , right: 32  , bottom: 220),
        child: OnboardingWidget(
          title: 'Smart Campus Transportation',
        ),
      ),
    );
  }
}