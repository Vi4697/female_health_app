import 'package:female_health_app/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeData(BuildContext context) {

  return ThemeData(
    appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: const Color(0xFF13B9FF),
    ),
    textTheme:
    GoogleFonts.dmSansTextTheme(Theme.of(context).textTheme).copyWith(
      headlineMedium: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      ),
      headlineLarge: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 40.sp,
        fontWeight: FontWeight.w900,
      ),
      bodyMedium: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 25.sp,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}