import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniride/core/providers/app_language_provider.dart';
import 'package:uniride/core/widgets/Language_ToggleButton_widget.dart';

class TopBar extends StatelessWidget {
  final bool showSkip;

  const TopBar({super.key, this.showSkip = true});

  @override
  Widget build(BuildContext context) {
    final languagePro = Provider.of<AppLanguageProvider>(context);
    final bool isArabic = languagePro.appLanguage == 'ar';

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
                  ),
                )
              : const SizedBox(width: 40),

          LanguageToggleButton(),
        ],
      ),
    );
  }
}
