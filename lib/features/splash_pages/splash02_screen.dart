// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniride/core/providers/app_language_provider.dart';
import 'package:uniride/features/onboarding_pages/screens/onboarding01_screen.dart';
import 'package:uniride/l10n/app_localizations.dart';

class Splash02Screen extends StatefulWidget {
  const Splash02Screen({super.key});

  @override
  State<Splash02Screen> createState() => _Splash02ScreenState();
}

class _Splash02ScreenState extends State<Splash02Screen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: screenHeight,
            child: Image.asset(
              'assets/images/splash02_bg.png',
              fit: BoxFit.cover,
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(top: 40, right: 24), // مساحة خارجية
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ), // مساحة داخلية
              decoration: ShapeDecoration(
                color: const Color(0xCCFFFEFE),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE0E0E0)),
                  borderRadius: BorderRadius.circular(100),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 3,
                    offset: Offset(0, 1),
                  ),
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 2,
                    offset: Offset(0, 1),
                    spreadRadius: -1,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'عربي',
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.language, color: Color(0xFFFDD35C), size: 16),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Onboarding01Screen(),
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 56,
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Consumer<AppLanguageProvider>(
                            builder: (context, languagePro, child) {
                              return Text(
                                AppLocalizations.of(context)!.getstarted,
                                style: TextStyle(
                                  color: Color(0xFFCF8307),
                                  fontSize: 18,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 1.20,
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Color(0xFFCF8307)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Powered by ',
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'PTUK Engineering',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
