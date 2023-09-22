import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xff32B768);
const Color blueColor = Color(0xff2C8DFF);
const Color textColor = Color(0xff6B7280);
const Color backgroundColor = Color(0xfff6f6f6);
final TextTheme myTextTheme = TextTheme(
  displayLarge: GoogleFonts.inter(
      fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  displayMedium: GoogleFonts.inter(
      fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.inter(fontSize: 46, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.inter(
      fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall: GoogleFonts.inter(fontSize: 23, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.inter(
      fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  titleMedium: GoogleFonts.inter(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  titleSmall: GoogleFonts.inter(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.inter(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.inter(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  bodySmall: GoogleFonts.inter(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.inter(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
