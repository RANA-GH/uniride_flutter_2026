import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// 🔹 Image
          Image.asset(image, width: screenWidth * 0.75),
      
          const SizedBox(height: 40),
      
          /// 🔹 Title
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2A2A2A),
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ),
      
      
          const SizedBox(height: 12),
      
          /// 🔹 Description
          SizedBox(
            width: screenWidth * 0.75,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF212121),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
