import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_place_app/themes/light_theme/light_text_theme.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Color(0xff414152),
      ),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xff7C7E87),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: kLightTextTheme,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0.0,
      selectedItemColor: const Color(0xff202020),
      unselectedItemColor: const Color(0xff93959D),
      backgroundColor: const Color(0xffF1F2F4),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedLabelStyle: GoogleFonts.jost(
        fontWeight: FontWeight.w600,
      ),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: const IconThemeData(
        color: Color(0xff4BB198),
      ),
      unselectedIconTheme: const IconThemeData(
        color: Color(0xff93959D),
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: Color(0xffD1D1D1),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color(0xff3474EF),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size.fromHeight(
            64,
          ),
        ),
      ),
    ),
  );
}
