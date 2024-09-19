
import 'package:flutter/material.dart';

enum AppTheme{
  blueLight('Blue Light'),
  blueDark('Blue Dark'),
  greenLight('Green Light'),
  redDark('Red Dark');
  const AppTheme(this.name);
  final String name ;
}

final AppThemeData={
  AppTheme.blueLight:ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue
    ),
    brightness: Brightness.light,
    primaryColor: Colors.blue
  ),
  AppTheme.blueDark:ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[700]
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.blue[700]
  ),
  AppTheme.redDark:ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.red[700]
    ),
    brightness: Brightness.dark,
    primaryColor: Colors.red[700]
  ),
  AppTheme.greenLight:ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.lightGreen
    ),
    brightness: Brightness.light,
    primaryColor: Colors.lightGreen
  )
};