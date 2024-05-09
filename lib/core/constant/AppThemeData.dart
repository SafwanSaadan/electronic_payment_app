// ignore_for_file: non_constant_identifier_names, file_names

import 'package:electronic_payment_app/core/constant/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData AppThemeData() => ThemeData(
      textTheme: TextTheme(
        labelLarge: GoogleFonts.cairo(
          color: AppColor.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        labelMedium: GoogleFonts.cairo(
          color: AppColor.black,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        labelSmall: GoogleFonts.cairo(
          color: AppColor.black,
          fontSize: 12,
        ),
        bodyLarge: GoogleFonts.cairo(fontSize: 18, fontWeight: FontWeight.w600),
        bodyMedium:
            GoogleFonts.cairo(fontSize: 16, fontWeight: FontWeight.w600),
        bodySmall: GoogleFonts.cairo(fontSize: 14, fontWeight: FontWeight.w600),
      ),
      buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.accent, splashColor: AppColor.red),
    );
