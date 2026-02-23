import 'package:flutter/material.dart';
import 'package:uniride/core/app_routes/routes.dart';
import 'package:uniride/core/theme/app_colors.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/CircleArrowButton_widget.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/onboarding_widget.dart';
import 'package:uniride/features/onboarding_pages/presentation/widgets/tobBar_widget.dart';

class Onboarding03Screen extends StatelessWidget {
  const Onboarding03Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.053),
          child: Column(
            children: [
              TopBar(showSkip: false),

              SizedBox(height: screenHeight * 0.068),

              Expanded(
                child: const OnboardingWidget(
                  image: 'assets/images/onbodaring03.svg',
                  title: 'Connected Rides, be \nConnected',
                  description:
                      'Choose your ride, set your schedule, and enjoy hassle-free campus transportation.',
                ),
              ),

              SizedBox(height: screenHeight * (80 / 932)),

              Center(
                child: CircleArrowButton(
                  progress: 1.0,
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signup);
                  },
                  child: Center(
                    child: Text(
                      'Go',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
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
