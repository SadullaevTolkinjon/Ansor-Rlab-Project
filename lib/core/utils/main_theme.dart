import 'package:ancor_inc/core/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static const Color _whiteColor = Color(0xffF8F7FD);
  static const Color _blackColor = Color(0xff242424);

  // Current app's UI

  // Current App's Theme

  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.inter().fontFamily,

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: ColorConst.red,
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: _whiteColor,
        ),
      ),
    ),

    // ? Appbars Style

    appBarTheme: const AppBarTheme(
        foregroundColor: _blackColor,
        backgroundColor: _whiteColor,
        elevation: 2,
        titleTextStyle: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: _blackColor)),

    // ? Scaffold background Color

    scaffoldBackgroundColor: _whiteColor,

    // ? Floating action Buttons styles

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
