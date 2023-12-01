import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_colors.dart';

class CustomTextStyles {
  static const Color fontColor = CustomColors.textColor;

  static final menuOptions = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: fontColor,
  );

  static final title = GoogleFonts.montserrat(
    fontSize: 56,
    fontWeight: FontWeight.w700,
    color: fontColor,
  );

  static final subtitle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: fontColor,
  );

  static final section = GoogleFonts.montserrat(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: fontColor,
  );

  static final circularText = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static final chip = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: CustomColors.pinkDark,
  );

  static final h3 = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: CustomColors.gray900,
  );

  static final h4 = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: CustomColors.gray700,
  );
}
