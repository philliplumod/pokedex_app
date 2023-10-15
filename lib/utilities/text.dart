import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get headingStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ));
}

TextStyle get textStyle {
  return GoogleFonts.poppins(
      textStyle: const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  ));
}
