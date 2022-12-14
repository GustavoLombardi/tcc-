import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const primary = Color.fromRGBO(42, 44, 43, 1);
  static const secundary = Color.fromRGBO(196, 161, 109, 1);
  static const blue = Color.fromRGBO(0, 162, 180, 1);
  static const black = Color.fromARGB(255, 0, 0, 0);
}

ThemeData androidTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    textTheme: TextTheme(
      bodyText2: GoogleFonts.quicksand(),
      bodyText1: GoogleFonts.quicksand(),
      button: GoogleFonts.quicksand(),
      caption: GoogleFonts.quicksand(),
      headline4: GoogleFonts.quicksand(),
      headline3: GoogleFonts.quicksand(),
      headline2: GoogleFonts.quicksand(),
      headline1: GoogleFonts.quicksand(),
      headline5: GoogleFonts.quicksand(),
      overline: GoogleFonts.quicksand(),
      subtitle1: GoogleFonts.quicksand(),
      subtitle2: GoogleFonts.quicksand(),
      headline6: GoogleFonts.quicksand(),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: AppColors.secundary,
    ),
    dialogTheme: DialogTheme(
      titleTextStyle: GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Color.fromARGB(255, 0, 100, 249),
      textTheme: ButtonTextTheme.primary,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: const Color.fromARGB(255, 0, 100, 249),
      textStyle: GoogleFonts.quicksand(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
  );
}
