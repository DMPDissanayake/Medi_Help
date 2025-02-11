class Booking {
  final String bookingId;
  final String name;
  final String age;
  final String phoneNumber;
  final String email;
  final bool isMale; // Change to bool (true = Male, false = Female)
  final String problem;
  final DateTime date;
  final String time;

  Booking({
    required this.bookingId,
    required this.name,
    required this.age,
    required this.phoneNumber,
    required this.email,
    required this.isMale,
    required this.problem,
    required this.date,
    required this.time,
  });
}
