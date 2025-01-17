import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/LoginSigin/login_page.dart';
import 'package:project_medihelp/Presentation/View/LoginSigin/sigin_page.dart';

class TwoOnBoradScreen extends StatelessWidget {
  const TwoOnBoradScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: kWhirt,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            "assets/img/medi_help_logo.png",
            width: 250,
            fit: BoxFit.cover,
          ),
          Text(
            "Medi\nHelp",
            style: GoogleFonts.aclonica(
              textStyle: TextStyle(
                  color: kMainColor, fontWeight: FontWeight.bold, fontSize: 40),
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: MainButton(
                text: "Log In",
                buttonColor: kMainColor,
                textColor: kWhirt,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SiginPage()));
              },
              child: MainButton(
                text: "Sign Up",
                buttonColor: kBacground,
                textColor: kMainColor,
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
