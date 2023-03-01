import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
      textTheme: TextTheme(
          titleSmall: const TextStyle(
            color: Color(0xFFFFFFFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          headline1: const TextStyle(
            color: Color(0xFFFFFFFD),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          )));
}

class Theming {
  ThemeData themeData = ThemeData(
      primaryColor: Colors.black,
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.black,
      ),
      drawerTheme: const DrawerThemeData(
        elevation: 3,
        backgroundColor: Colors.black,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
        titleSmall: TextStyle(
          color: Color(0xFFFFFFFD),
          fontSize: 27.0,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(
          color: Color(0xFFFFFFFD),
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
        ),
        headlineSmall: TextStyle(color: Colors.white),
        bodyLarge: TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        bodySmall: TextStyle(color: Colors.white),
        labelSmall: TextStyle(
          color: Color(0xFFFFFFFD),
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ));
}
