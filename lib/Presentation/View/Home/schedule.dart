import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Models/bookin.dart';
import 'package:project_medihelp/Presentation/Common/schedule_card.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Appointment Schedule",
          style: GoogleFonts.prata(
            textStyle: TextStyle(
                color: kMainColor, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('bookings').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No appointments found"));
          }

          final bookings = snapshot.data!.docs.map((doc) {
            return Booking(
              bookingId: doc.id,
              name: doc['name'],
              age: doc['age'],
              phoneNumber: doc['phoneNumber'],
              email: doc['email'],
              isMale: doc['gender'] is bool
                  ? doc['gender']
                  : doc['gender'] == "Male", // Fix here
              problem: doc['problem'],
              date: (doc['date'] as Timestamp).toDate(),
              time: doc['time'],
            );
          }).toList();

          return ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: bookings.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(bookings[index].bookingId), // Add a unique key here
                direction:
                    DismissDirection.endToStart, // Enables swipe-to-delete
                background: Container(
                  color: Colors.redAccent,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (direction) async {
                  await FirebaseFirestore.instance
                      .collection('bookings')
                      .doc(bookings[index].bookingId)
                      .delete();

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Appointment Deleted")),
                  );
                },
                child: ScheduleCard(booking: bookings[index]),
              );
            },
          );
        },
      ),
    );
  }
}
