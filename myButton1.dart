import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My_Button extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color? backcolor;
  final Color? textcolor;

  const My_Button(
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
            color: backcolor, borderRadius: BorderRadius.circular(7)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              text,
              style: GoogleFonts.spaceGrotesk(
                color: textcolor,
                fontWeight: FontWeight.bold,
                fontSize: 12.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
