import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants/app_colors.dart';

TextTheme textTheme = TextTheme(
  titleLarge: GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  titleMedium: GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  ),
  bodyLarge: GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
  bodyMedium: GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
  bodySmall: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
);

ThemeData theme = ThemeData(
  brightness: Brightness.light,
  textTheme: textTheme,
  colorScheme: const ColorScheme.light(
    surface: AppColors.purple1,
    primary: AppColors.pink1,
    secondary: Colors.white,
  ),
);