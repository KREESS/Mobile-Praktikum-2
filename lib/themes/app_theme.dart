import 'package:flutter/material.dart';
import 'package:flutter_application_1/themes/palette.dart';
import 'text_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    colorScheme: ColorScheme.light(
        primary: Palette.tomato, secondary: Palette.lightBlue),
    fontFamily: 'Montserrat',
    textTheme: TextTheme(
      headlineLarge: TextStyles.headlineLarge,
      headlineMedium: TextStyles.headlineMedium,
      bodyLarge: TextStyles.bodyLarge,
      bodyMedium: TextStyles.bodyMedium,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.teal,
      textTheme: ButtonTextTheme.primary,
    ),
    scaffoldBackgroundColor: Colors.grey[200],
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.teal,
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.amber,
    ),
    fontFamily: 'Schuyler',
    textTheme: TextTheme(
      headlineLarge: TextStyles.headlineLarge.copyWith(color: Colors.white),
      headlineMedium: TextStyles.headlineMedium.copyWith(color: Colors.white),
      bodyLarge: TextStyles.bodyLarge.copyWith(color: Colors.white70),
      bodyMedium: TextStyles.bodyMedium.copyWith(color: Colors.white60),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.teal,
      textTheme: ButtonTextTheme.primary,
    ),
    scaffoldBackgroundColor: Colors.grey[800],
  );
}
