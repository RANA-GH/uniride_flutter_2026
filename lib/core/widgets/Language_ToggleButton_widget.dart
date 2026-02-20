import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniride/core/providers/app_language_provider.dart';

class LanguageToggleButton extends StatelessWidget {
  const LanguageToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final languagePro = Provider.of<AppLanguageProvider>(context);
    final bool isArabic = languagePro.appLanguage == 'ar';

    return GestureDetector(
      onTap: () {
        Provider.of<AppLanguageProvider>(
          context,
          listen: false,
        ).changeLanguage(isArabic ? 'en' : 'ar');
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
        decoration: ShapeDecoration(
          color: const Color(0xCCFFFEFE),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFE0E0E0)),
            borderRadius: BorderRadius.circular(30),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 3,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isArabic ? 'عربي' : 'English',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF757575),
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.language, size: 16, color: Color(0xFFFDD35C)),
          ],
        ),
      ),
    );
  }
}
