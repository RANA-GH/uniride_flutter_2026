import 'package:flutter/material.dart';
class AppLanguageProvider extends ChangeNotifier {
  String appLanguage = 'en';

  Locale get currentLocale => Locale(appLanguage);

  void changeLanguage(String language) {
    if (language == appLanguage) return;
    appLanguage = language;
    notifyListeners();
  }
}