import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// app theme
final baseTheme = ThemeData.light();

// theme
final ThemeData appTheme = baseTheme.copyWith(
  primaryColor: appColors.gradientOne,
  appBarTheme: AppBarTheme(
    backgroundColor: appColors.gradientTwo,
    elevation: 0.0,
    foregroundColor: appColors.white,
  ),
  colorScheme: baseTheme.colorScheme.copyWith(
    secondary: appColors.green,
  ),
  dividerColor: appColors.grey,
  scaffoldBackgroundColor: appColors.white,
  brightness: Brightness.light,
  progressIndicatorTheme: ProgressIndicatorThemeData(
    linearTrackColor: appColors.darkGrey.withOpacity(.1),
    circularTrackColor: appColors.darkGrey.withOpacity(.1),
    color: appColors.gradientOne,
  ),
  buttonTheme: baseTheme.copyWith().buttonTheme.copyWith(
        buttonColor: appColors.gradientOne,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
  inputDecorationTheme: baseTheme.inputDecorationTheme.copyWith(
    focusColor: appColors.gradientTwo,
    fillColor: appColors.white,
  ),
  floatingActionButtonTheme: baseTheme.floatingActionButtonTheme.copyWith(
    backgroundColor: appColors.green,
    foregroundColor: appColors.white,
  ),
  primaryIconTheme: baseTheme.primaryIconTheme.copyWith(
    color: appColors.gradientTwo,
  ),
  iconTheme: baseTheme.iconTheme.copyWith(
    color: appColors.gradientTwo,
  ),
  textTheme: baseTheme
      .copyWith()
      .textTheme
      .copyWith(
        headline1: GoogleFonts.openSans(
          fontSize: 95,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 59,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 48,
          fontWeight: FontWeight.w400,
        ),
        headline4: GoogleFonts.openSans(
          fontSize: 34,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        headline5: GoogleFonts.openSans(
          fontSize: 24,
          fontWeight: FontWeight.w400,
        ),
        headline6: GoogleFonts.openSans(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        subtitle1: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
        subtitle2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        bodyText1: GoogleFonts.openSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
        ),
        bodyText2: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
        ),
        button: GoogleFonts.openSans(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
        ),
        caption: GoogleFonts.openSans(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
        ),
        overline: GoogleFonts.openSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
        ),
      )
      .apply(
        bodyColor: appColors.text,
        displayColor: appColors.text,
      ),
);

// app colors
const appColors = ThemeModel(
  text: Color(0xFF0A0D4D),
  subText: Color(0xFF747A94),
  lowerText: Color(0xFFA1A5B8),
  red: Color(0xFFEA4C4C),
  lightRed: Color(0xFFF9EAEC),
  green: Color(0xFF30974D),
  lightGreen: Color(0xFFE6FBE3),
  grey: Color(0xFFCECFCD),
  darkGrey: Color(0xFF9FA09E),
  lightGrey: Color(0xFFE1E1E1),
  gradientOne: Color(0xFF616260),
  gradientTwo: Color(0xFF20201F),
  borderColor: Color(0xFFE9E9F7),
  chatBubbleColor: Color(0xFFEEEFED),
  white: Color(0xFFFFFFFF),
  black: Color(0xFF000000),
);

// theme model
class ThemeModel {
  const ThemeModel({
    required this.text,
    required this.subText,
    required this.lowerText,
    required this.red,
    required this.lightRed,
    required this.green,
    required this.lightGreen,
    required this.grey,
    required this.darkGrey,
    required this.lightGrey,
    required this.gradientOne,
    required this.gradientTwo,
    required this.borderColor,
    required this.chatBubbleColor,
    required this.black,
    required this.white,
  });

  final Color text;
  final Color subText;
  final Color lowerText;
  final Color red;
  final Color lightRed;
  final Color green;
  final Color lightGreen;
  final Color grey;
  final Color darkGrey;
  final Color lightGrey;
  final Color gradientOne;
  final Color gradientTwo;
  final Color borderColor;
  final Color chatBubbleColor;
  final Color black;
  final Color white;
}
