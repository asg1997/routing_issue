import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

abstract class AppFonts {
  const AppFonts();

  // w100 Thin, the least thick
// w200 Extra-light
// w300 Light
// w400 Normal / regular / plain
// w500 Medium
// w600 Semi-bold
// w700 Bold
// w800 Extra-bold
// w900 Black, the most thick

  static final regular27 = GoogleFonts.lato(
    fontSize: 27,
    height: 1,
  );

  static final regular22 = GoogleFonts.lato(
    fontSize: 22,
  );

  static final regular20 = GoogleFonts.lato(
    fontSize: 20,
  );

  static final regular18 = GoogleFonts.lato(
    fontSize: 18,
  );

  static final regular16 = GoogleFonts.lato(
    fontSize: 16,
  );

  static final regular14 = GoogleFonts.lato(
    fontSize: 14,
    height: 1,
  );

  static final regular15 = GoogleFonts.lato(
    fontSize: 15,
  );
  static final regular12 = GoogleFonts.lato(
    fontSize: 12,
  );
  static final regular6 = GoogleFonts.lato(
    fontSize: 6,
  );
  static final regular10 = GoogleFonts.lato(
    fontSize: 10,
  );

  static final medium14 = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static final medium16 = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final medium18 = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final medium15 = GoogleFonts.lato(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  static final medium20 = GoogleFonts.lato(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static final bold18 = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
}
