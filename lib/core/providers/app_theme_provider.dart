import 'package:flutter/material.dart';

class AppThemeProvider with ChangeNotifier {
  ThemeMode appTheme = ThemeMode.light;

  void changeTheme(ThemeMode theme) {
    if (theme == appTheme) return;
    appTheme = theme; 
    notifyListeners();
  }
  void Theme(String theme) {
    if (theme == 'light') {
      appTheme = ThemeMode.light;
    } else {
      appTheme = ThemeMode.dark;
    }
    notifyListeners();
  }
}
