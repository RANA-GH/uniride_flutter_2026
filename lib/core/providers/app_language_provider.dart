import 'package:flutter/material.dart';


class AppLanguageProvider extends ChangeNotifier {
  String appLanguage = 'en';

  void changeLanguage(String language) {
    if (language == appLanguage) return; //انهي الفانكشن لا تعمل شي 
    appLanguage = language;//اذا مش نفس بعض غير اللغة حسب الي اختارت 
    notifyListeners();
  }
}
