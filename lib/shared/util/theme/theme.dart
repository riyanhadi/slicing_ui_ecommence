import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/shared/util/theme/theme_constants.dart';

var defaultTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.white,
  cardTheme: CardTheme(
    elevation: 0.6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.grey[800],
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: primaryColor,
    titleTextStyle: const TextStyle(
      color: Colors.white,
    ),
    actionsIconTheme: const IconThemeData(
      color: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
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
);
