import 'package:app_islami/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lightTheme=
      ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          centerTitle: true,
          titleTextStyle:
          GoogleFonts.elMessiri(
            color: Colors.black,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          )
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.primaryColor,
          thickness: 3,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
        ),
        textTheme: TextTheme(
          bodyLarge:GoogleFonts.elMessiri(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 35,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          bodySmall: GoogleFonts.amiri(
            fontWeight: FontWeight.w400,
            color: Colors.black,
            fontSize: 27,
          ),
        ),

      );

  static ThemeData darkTheme=
      ThemeData();
}