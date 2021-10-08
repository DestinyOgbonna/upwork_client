import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppStyles {
  static TextStyle whiteText = GoogleFonts.rakkas(
    fontSize: 23,
    fontWeight: FontWeight.w300,
    color: AppColors.whiteTextColor,
  );

  static TextStyle pinkText = GoogleFonts.rakkas(
    fontSize: 23,
    fontWeight: FontWeight.w300,
    color: AppColors.pinkColor,
  );
  static TextStyle secondwhiteText = GoogleFonts.rakkas(
    fontSize: 19,
    fontWeight: FontWeight.w300,
    color: AppColors.whiteTextColor,
  );

  static TextStyle blackText = GoogleFonts.rakkas(
      fontSize: 16, fontWeight: FontWeight.w300, color: AppColors.blackColor);
}
