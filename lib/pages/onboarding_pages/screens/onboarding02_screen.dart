import 'package:flutter/material.dart';
import 'package:uniride/core/theme/app_colors.dart';
import 'package:uniride/pages/onboarding_pages/presentation/widgets/CircleArrowButton_widget.dart';
import 'package:uniride/pages/onboarding_pages/presentation/widgets/onboarding_widget.dart';
import 'package:uniride/pages/onboarding_pages/presentation/widgets/tobBar_widget.dart';
import 'package:uniride/pages/onboarding_pages/screens/onboarding03_screen.dart';
class Onboarding02Screen extends StatefulWidget {
  const Onboarding02Screen({super.key});

  @override
  State<Onboarding02Screen> createState() => _Onboarding02ScreenState();
}

class _Onboarding02ScreenState extends State<Onboarding02Screen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
    backgroundColor: AppColors.white,
      body: SafeArea(child: 
      Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.053),
        child: Column(
          children: [
            TopBar(),
            SizedBox(height: screenHeight * 0.068),

            Expanded(
              child: const OnboardingWidget(
                image: 'assets/images/onbo02.png',
                title: 'Book • Track • Arrive',
                description:
                    'Seamless booking, real-time tracking, and reliable transport for every university day.',
              ),
            ),

            SizedBox(height: screenHeight * (80 / 932)),

            Center(
              child: CircleArrowButton(
                progress: 0.66,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Onboarding03Screen(),
                      ),
                    );
                },
              ),
            ),

            SizedBox(height: screenHeight * 0.12),
          ],
        ),
      ),),
      );
  }
}