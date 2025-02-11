import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/booking_details_card.dart';
import 'package:project_medihelp/Presentation/Common/doctorcrad.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Booking/done_page.dart';
import 'package:project_medihelp/Models/bookin.dart'; // Import Booking model

class ConfomePage extends StatefulWidget {
  final Booking booking; // Pass booking details

  const ConfomePage({super.key, required this.booking});

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
            Icons.arrow_back_ios_sharp,
            color: kMainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // DoctorCart(
              //   docName: 'Dr. Rajesh Malhotra',
              //   positionName: 'Cardiologist',
              //   imgUrl: 'assets/docImg/r-men_doc.jpg',
              //   favLike: 5,
              //   commAmount: 60,
              // ),
              SizedBox(height: 20),
              Divider(color: kBacground, thickness: 3),
              SizedBox(height: 20),
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
                            Text("Date",
                                style: GoogleFonts.prata(
                                    textStyle: TextStyle(
                                        color: kMainColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15))),
                            Text("Time",
                                style: GoogleFonts.prata(
                                    textStyle: TextStyle(
                                        color: kMainColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15))),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.booking.date.toString().split(' ')[0]}", // Format Date
                              style: GoogleFonts.prata(
                                  textStyle: TextStyle(
                                      color: kMainColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15)),
                            ),
                            Text(
                              "${widget.booking.time}", // Time from Firestore
                              style: GoogleFonts.prata(
                                  textStyle: TextStyle(
                                      color: kMainColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: BookingDetailsCard(
                  booking: widget.booking,
                ),
              ),
              SizedBox(height: 20),
              Divider(color: kBacground, thickness: 3),
              SizedBox(height: 20),
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
              SizedBox(height: 10),
              Text(
                widget.booking.problem, // Show problem description
                style: GoogleFonts.underdog(
                  textStyle: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 30),
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
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
