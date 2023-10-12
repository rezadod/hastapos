import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color whiteColor = Color(0xFFFFFFFF);
const Color primaryColor = Color(0xff3B41E3);
const Color secondaryColor = Color(0xffFF872E);

const FontWeight medium = FontWeight.w500;
const FontWeight semiBold = FontWeight.w600;

final TextStyle tBodyWithDarkColor = GoogleFonts.poppins(
  fontSize: 14,
  color: primaryColor,
);
final TextStyle tBodyWithSoftkColor = GoogleFonts.poppins(
  fontSize: 14,
  color: secondaryColor,
);
final TextStyle tBody = GoogleFonts.poppins(
  fontSize: 14,
  // color: primaryColor,
);

final TextStyle titleStyle = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: const Color(0xff202020),
);
