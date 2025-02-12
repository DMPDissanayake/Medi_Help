import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Models/bookin.dart';
import 'package:project_medihelp/Constant/colors.dart';

class ScheduleCard extends StatelessWidget {
  final Booking booking;

  const ScheduleCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              booking.name,
              style: GoogleFonts.prata(
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kMainColor,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Age: ${booking.age} | Gender: ${booking.isMale ? 'Male' : 'Female'}",
              style: TextStyle(fontSize: 14, color: kBlack),
            ),
            SizedBox(height: 5),
            Text(
              "Problem: ${booking.problem}",
              style: TextStyle(fontSize: 14, color: kBlack),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: kMainColor, size: 18),
                    SizedBox(width: 5),
                    Text(
                      "${booking.date.toLocal().toString().split(' ')[0]}",
                      style: TextStyle(fontSize: 14, color: kBlack),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.access_time, color: kMainColor, size: 18),
                    SizedBox(width: 5),
                    Text(
                      booking.time,
                      style: TextStyle(fontSize: 14, color: kBlack),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
