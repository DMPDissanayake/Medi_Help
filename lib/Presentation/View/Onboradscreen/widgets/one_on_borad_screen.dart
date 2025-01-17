import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';

class OneOnBoradScreen extends StatelessWidget {
  const OneOnBoradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: kMainColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/img/medi_help_logo_white.png",
            width: 250,
            fit: BoxFit.cover,
          ),
          Text(
            "Medi\nHelp",
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                  color: kWhirt, fontWeight: FontWeight.bold, fontSize: 40),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
