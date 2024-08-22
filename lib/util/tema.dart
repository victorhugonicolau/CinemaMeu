import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tema() {
  return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.alata(
          fontSize: 12,
        ),
        bodyMedium: GoogleFonts.alata(
          fontSize: 14,
        ),
        bodyLarge: GoogleFonts.alata(
          fontSize: 16,
        ),
      ));
}
