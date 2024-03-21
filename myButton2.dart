import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My_Button2 extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color? backcolor;
  final Color? textcolor;

  const My_Button2(
      {super.key,
      required this.onTap,
      required this.text,
      required this.backcolor,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        //height: 30,
        //width: 350,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: backcolor, borderRadius: BorderRadius.circular(11)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              text,
              style: GoogleFonts.spaceGrotesk(
                color: textcolor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
