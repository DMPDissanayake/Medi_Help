import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/booking_details_card.dart';
import 'package:project_medihelp/Presentation/Common/doctorcrad.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Booking/done_page.dart';

class ConfomePage extends StatefulWidget {
  const ConfomePage({super.key});

  @override
  State<ConfomePage> createState() => _ConfomePageState();
}

class _ConfomePageState extends State<ConfomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Your appointment",
          style: GoogleFonts.prata(
            textStyle: TextStyle(
                color: kMainColor, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp, // Replace with your desired icon
            color: kMainColor, // Use your custom color
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-menN.png',
                favAmount: 5,
                commAmount: 60,
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: kBacground, // Customize the color of the line
                thickness: 3, // Customize the thickness of the line
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  decoration: BoxDecoration(
                    color: kBacground,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Date",
                              style: GoogleFonts.prata(
                                textStyle: TextStyle(
                                    color: kMainColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                            Text(
                              "Time",
                              style: GoogleFonts.prata(
                                textStyle: TextStyle(
                                    color: kMainColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "30/01/2025",
                              style: GoogleFonts.prata(
                                textStyle: TextStyle(
                                    color: kMainColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                            Text(
                              "10:00 AM",
                              style: GoogleFonts.prata(
                                textStyle: TextStyle(
                                    color: kMainColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: BookingDetailsCard(),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: kBacground, // Customize the color of the line
                thickness: 3, // Customize the thickness of the line
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Problem Description",
                style: GoogleFonts.prata(
                  textStyle: TextStyle(
                    color: kMainColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: GoogleFonts.underdog(
                  textStyle: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DonePage()));
                },
                child: MainButton(
                  text: "Done",
                  buttonColor: kMainColor,
                  textColor: kWhirt,
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
