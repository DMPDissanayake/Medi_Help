import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  const MainButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: buttonColor,
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.prata(
            textStyle: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
