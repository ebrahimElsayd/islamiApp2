import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDarkEnabled = false;
  static Color primaryColor = Color(0xFFB7935F);
  static Color darkSecondryColor = Color(0xFFFACC1D);
  static Color darkColor = Color(0xFF141A2E);
  static ThemeData lightMood = ThemeData(
      textTheme: TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.black)),
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: primaryColor),
        ),
        elevation: 18,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32, color: Colors.black)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          secondary: primaryColor,
          onSecondary: Colors.black,
          background: Colors.white),
      useMaterial3: true,
      dividerColor: primaryColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white));
  static ThemeData darktMood = ThemeData(
      textTheme: TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
          titleMedium: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white)),
      cardTheme: CardTheme(
        color: darkColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(color: primaryColor),
        ),
        elevation: 18,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondryColor,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32, color: darkSecondryColor)),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)),
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkColor,
          primary: darkColor,
          onPrimary: Colors.white,
          secondary: darkSecondryColor,
          onSecondary: Colors.white,
          background: darkColor),
      useMaterial3: true,
      dividerColor: darkSecondryColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkColor));
}
