import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get themeData {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      textTheme: GoogleFonts.koHoTextTheme().copyWith(
        displayLarge: GoogleFonts.koHo(fontSize: 120, fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.koHo(fontSize: 60, fontWeight: FontWeight.bold),
        displaySmall: GoogleFonts.koHo(fontSize: 40, fontWeight: FontWeight.bold),
        
        labelLarge: GoogleFonts.koHo(fontSize: 60),
        labelMedium: GoogleFonts.koHo(fontSize: 30),
        labelSmall: GoogleFonts.koHo(fontSize: 18),
        
        bodyLarge: GoogleFonts.koHo(fontSize: 48,color: Colors.white),
        // bodyMedium: GoogleFonts.koHo(fontSize: 28,color: Colors.white),
        bodySmall: GoogleFonts.koHo(fontSize: 18,fontWeight: FontWeight.bold),

      ),
    );
  }
}
