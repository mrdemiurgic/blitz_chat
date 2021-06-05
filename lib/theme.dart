import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlitzTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(brightness: Brightness.dark),
        primaryColor: Color(0xFFFFC857),
        scaffoldBackgroundColor: Color(0xFF1E152A),
        textTheme: GoogleFonts.montserratTextTheme().apply(
            displayColor: Color(0xFFF7F3F6), bodyColor: Color(0xFFF7F3F6)));
    // textTheme: TextTheme(headline4: TextStyle(color: Color(0xFFF7F3F6))));
  }
}
