import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color themeColor = Color(0xFFE5E5E5);
Color basecolor = Colors.black87;

class Config {
  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    textTheme: GoogleFonts.poppinsTextTheme(),
    cardColor: Colors.white,
    dividerColor: Colors.white,
    backgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: themeColor,
    )),
  );
}
