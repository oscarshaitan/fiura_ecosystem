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
    primaryColor: getMaterialColor(const Color(0xFF1D1D1D)),
    primarySwatch: getMaterialColor(const Color(0xFFff5151)),
    scaffoldBackgroundColor: getMaterialColor(const Color(0xFF1D1D1D)),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: getMaterialColor(const Color(0xFF1D1D1D)),
    ),
    drawerTheme: DrawerThemeData(
      elevation: 3,
      backgroundColor: getMaterialColor(const Color(0xFF1D1D1D)),
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
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xFFe1e1e1),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: Color(0xFFe3e3e3),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFFFFFFD)),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFFFFFFD)),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFe1e1e1)),
      ),
    ),
  );
}

MaterialColor getMaterialColor(Color color) {
  final int red = color.red;
  final int green = color.green;
  final int blue = color.blue;

  final Map<int, Color> shades = {
    50: Color.fromRGBO(red, green, blue, .1),
    100: Color.fromRGBO(red, green, blue, .2),
    200: Color.fromRGBO(red, green, blue, .3),
    300: Color.fromRGBO(red, green, blue, .4),
    400: Color.fromRGBO(red, green, blue, .5),
    500: Color.fromRGBO(red, green, blue, .6),
    600: Color.fromRGBO(red, green, blue, .7),
    700: Color.fromRGBO(red, green, blue, .8),
    800: Color.fromRGBO(red, green, blue, .9),
    900: Color.fromRGBO(red, green, blue, 1),
  };

  return MaterialColor(color.value, shades);
}
