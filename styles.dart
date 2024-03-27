import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_prototype/Constants/colors.dart';

var colorValues = ColorConstants();

class styleValues {
  final TextStyle textStyle1 =
      GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w600, fontSize: 17);

  final TextStyle textStyle2 =
      GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 17);

  final TextStyle textStyle3 = GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.bold, color: Colors.black);

  final TextStyle textStyle4 = GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400, fontSize: 18, color: colorValues.navyBlue);

  final TextStyle textStyle5 = GoogleFonts.spaceGrotesk(
      fontWeight: FontWeight.w400, color: colorValues.navyBlue);
}
