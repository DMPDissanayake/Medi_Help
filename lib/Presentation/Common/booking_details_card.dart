import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Models/bookin.dart'; // Import Booking model

class BookingDetailsCard extends StatelessWidget {
  final Booking booking; // Accept Booking data

  const BookingDetailsCard({super.key, required this.booking});

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
                  "Self", // Change if you allow another person booking
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
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
                  booking.name, // Display actual name
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
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
                  booking.phoneNumber, // Display actual phone number
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
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
                  booking.email, // Display actual email
                  style: GoogleFonts.prata(
                    textStyle: TextStyle(
                        color: kWhirt,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
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
                  booking.isMale ? "Male" : "Female", // Display actual gender
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
