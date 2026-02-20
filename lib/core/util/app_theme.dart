import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 156, 33, 243),
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 199, 0, 254),
      selectedItemColor: Color.fromARGB(255, 254, 254, 254),
      unselectedItemColor: Color.fromARGB(255, 157, 157, 157),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 156, 33, 243),
      foregroundColor: Colors.white,
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 242, 1),
      foregroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 255, 242, 1),
      selectedItemColor: Color.fromARGB(255, 241, 5, 5),
      unselectedItemColor: Color.fromARGB(248, 214, 135, 6),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 255, 242, 1),
      foregroundColor: Colors.black,
    ),
  );
}
