import 'package:flutter/material.dart';

ThemeData getEcommerceTheme() {
  return ThemeData().copyWith(
    primaryColor: const Color(0xff000000),
    scaffoldBackgroundColor: const Color(0xfff9f9f9),
    cardTheme: CardTheme(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: const Color(0xfff9f9f9),
      titleTextStyle: TextStyle(
        color: Colors.blueGrey[700],
      ),
      actionsIconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
      iconTheme: IconThemeData(
        color: Colors.blueGrey[700],
      ),
    ),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Colors.grey[800],
      ),
      displayMedium: TextStyle(
        color: Colors.grey[800],
      ),
      bodyLarge: TextStyle(
        color: Colors.grey[800],
      ),
      bodyMedium: TextStyle(
        color: Colors.grey[800],
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: const IconThemeData(
        color: Color(0xff000000),
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey[500],
      ),
      selectedLabelStyle: const TextStyle(
        color: Color(0xff000000),
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.grey[500],
      ),
    ),
  );
}
