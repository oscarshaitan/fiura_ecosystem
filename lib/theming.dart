import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  return ThemeData(
      textTheme: const TextTheme(
          titleSmall: TextStyle(
            color: Color(0xFFFFFFFD),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          displayLarge: TextStyle(
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
    popupMenuTheme: const PopupMenuThemeData(
      color: Color(0xff353535),
      textStyle:
          TextStyle(color: Color(0xff999999), fontWeight: FontWeight.normal),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(
        color: Color(0xFFFFFFFD),
        fontSize: 27.0,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w900),
      headlineMedium: TextStyle(
        color: Color(0xFFFFFFFD),
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      ),
      headlineSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
      bodyMedium:
          TextStyle(color: Color(0xff999999), fontWeight: FontWeight.normal),
      bodySmall: TextStyle(color: Color(0xff999999)),
      labelSmall: TextStyle(
        color: Color(0xFFFFFFFD),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        color: Color(0xFFd4d4d4),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: Color(0xFF4c4a4b),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF4c4a4b)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFd4d4d4)),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFd4d4d4)),
      ),
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: Color(0xff353535),
      //Put the bodyMedium style here
      contentTextStyle:
          TextStyle(color: Color(0xff999999), fontWeight: FontWeight.normal),
      titleTextStyle: TextStyle(
        color: Color(0xffe5e5e5),
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
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
