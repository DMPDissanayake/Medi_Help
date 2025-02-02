import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_medihelp/Models/bookin.dart';

class Firestore {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final CollectionReference bookingCollection =
      FirebaseFirestore.instance.collection('bookingCollection');

  // Add a booking
  Future<void> addBooking(Booking booking) async {
    try {
      await bookingCollection
          .doc(booking.bookingId.toString())
          .set(booking.toJson());
      print("Booking added successfully!");
    } catch (e) {
      print("Error adding booking: $e");
    }
  }
}
