import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';

class BookingDetailsCard extends StatelessWidget {
  const BookingDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(158, 34, 97, 255),
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
                  "Booking for",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "another person",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Full Name",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "Dissanayake",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Phone Number",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "078 6611123",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "12abcd@gmail.com",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gender",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
                Text(
                  "female",
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
