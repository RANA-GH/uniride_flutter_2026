import 'package:flutter/material.dart';

class OnboardingWidget extends StatelessWidget {
  final String title;

  const OnboardingWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/onbo01.png'),
        SizedBox(height: 40),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color(0xFF2A2A2A),
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 1.20,
          ),
        ),
        SizedBox(height: 12),
        Column(
          children: [
            Text(
              'Seamless booking, real-time tracking, ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF212121),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
              Text(
              ' and reliable transport for every university day. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF212121),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 1.50,
              ),
            ),
          ],
        ),
        SizedBox(height: 80),
      ],
    );
  }
}
