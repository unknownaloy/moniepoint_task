import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:market_place_app/themes/dark_theme/dark_text_theme.dart';

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      color: Color(0xff8A8A8A),
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: kDarkTextTheme,
    chipTheme: const ChipThemeData(
      backgroundColor: Color(0xffF2BC8C),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0.0,
      selectedItemColor: const Color(0xff202020),
      unselectedItemColor: Colors.white,
      backgroundColor: const Color(0xff8A8A8A),
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
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 1,
      color: Colors.white,
    ),
  );
}
