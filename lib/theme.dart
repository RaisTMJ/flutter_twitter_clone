import 'package:flutter/material.dart';

enum ThemeKeys { LIGHT, DARK, DARKER }
class Themes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    accentColor: Colors.blue,
    brightness: Brightness.light,
    textTheme: TextTheme(headline6: TextStyle(color: Colors.grey[850]), subtitle1: TextStyle(color: Colors.grey[850])),
    primaryColorLight: Colors.grey[700],
    primaryColorDark: Colors.white,
    selectedRowColor: Colors.grey[300],
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    accentColor: Colors.blue,
    brightness: Brightness.dark,
    textTheme: TextTheme(headline6: TextStyle(color: Colors.white), subtitle1: TextStyle(color: Colors.white)),
    primaryColorLight: Colors.grey[400],
    primaryColorDark: Colors.grey[850],
    selectedRowColor: Colors.grey[700],
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.blue,
    brightness: Brightness.dark,
    textTheme: TextTheme(headline6: TextStyle(color: Colors.white), subtitle1: TextStyle(color: Colors.white)),
    primaryColorLight: Colors.grey[400],
    primaryColorDark: Colors.black,
    selectedRowColor: Colors.grey[850],
  );

  static ThemeData getThemeFromKey(ThemeKeys themeKey) {
    switch (themeKey) {
      case ThemeKeys.LIGHT:
        return lightTheme;
      case ThemeKeys.DARK:
        return darkTheme;
      case ThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}
