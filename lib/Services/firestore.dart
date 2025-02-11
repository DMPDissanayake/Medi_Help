import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_medihelp/Models/bookin.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //add Booking
  Future<void> addBooking(Booking booking) async {
    await _firestore.collection('bookings').doc(booking.bookingId).set({
      'name': booking.name,
      'age': booking.age,
      'phoneNumber': booking.phoneNumber,
      'email': booking.email,
      'gender': booking.isMale,
      'problem': booking.problem,
      'date': booking.date,
      'time': booking.time,
    });
  }

  //Read booking
}
