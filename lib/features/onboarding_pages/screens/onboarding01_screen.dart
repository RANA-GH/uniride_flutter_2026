import 'package:flutter/material.dart';
import 'package:uniride/core/app_routes/routes.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/CircleArrowButton_widget.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/onboarding_widget.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/tobBar_widget.dart';
import 'package:uniride/features/onboarding_pages/screens/onboarding02_screen.dart';

class Onboarding01Screen extends StatefulWidget {
  const Onboarding01Screen({super.key});

  @override
  State<Onboarding01Screen> createState() => _Onboarding01ScreenState();
}

class _Onboarding01ScreenState extends State<Onboarding01Screen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.053),
          child: Column(
            children: [
              TopBar(),
              SizedBox(height: screenHeight * 0.068),

              /// 🔹 Content (Reusable Widget)
              const OnboardingWidget(
                image: 'assets/images/onbo01.png',
                title: 'Smart Campus Transportation',
                description:
                    'Seamless booking, real-time tracking, and reliable transport for every university day.',
              ),

              SizedBox(height: screenHeight * (80 / 932)),

              Center(
                child: CircleArrowButton(
                  progress: 0.33,
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                       Routes.onBoarding02 ,
                       );
                  },
                ),
              ),

              SizedBox(height: screenHeight * 0.15),
            ],
          ),
        ),
      ),
    );
  }
}
