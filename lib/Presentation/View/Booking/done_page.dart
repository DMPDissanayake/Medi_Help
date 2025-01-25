import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Home/home_main.dart';

class DonePage extends StatelessWidget {
  const DonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      body: Column(
        children: [
          SizedBox(
            height: 130,
          ),
          Center(
            child: Icon(
              Icons.done_outline_rounded,
              color: kWhirt,
              size: 200,
            ),
          ),
          Text(
            "Congratulation",
            style: GoogleFonts.prata(
              textStyle: TextStyle(
                color: kWhirt,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Appointment Successfully",
            style: TextStyle(
              color: kWhirt,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/img/medi_help_logo_white.png",
            width: 100,
            fit: BoxFit.cover,
          ),
          Text(
            "Medi\nHelp",
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                  color: kWhirt, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeMain()));
              },
              child: MainButton(
                text: "Home",
                buttonColor: kWhirt,
                textColor: kMainColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
