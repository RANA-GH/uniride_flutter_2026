import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final bool showSkip;

  const TopBar({
    super.key,
    this.showSkip = true,});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.04,
        left: screenWidth * 0.09,
        right: screenWidth * 0.08,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showSkip
              ? const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF212121),
                    fontFamily: 'Inter',
                    height: 1.5,
                  ),
                )
              : const SizedBox(width: 40), 

          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: ShapeDecoration(
              color: const Color(0xCCFFFEFE),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                    width: 1, color: Color(0xFFE0E0E0)),
                borderRadius: BorderRadius.circular(30),
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
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF757575),
                    fontFamily: 'Inter',
                    height: 1.2,
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.language,
                  size: 16,
                  color: Color(0xFFFDD35C),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}