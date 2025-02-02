class Booking {
  final String bookingId;
  final String name;
  final String age;
  final String phoneNumber;
  final String email;
  final String isMale;
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

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      bookingId: json['bookingId'],
      name: json['name'],
      age: json['age'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      isMale: json['isMale'],
      problem: json['problem'],
      date: DateTime.parse(json['date']),
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bookingId': bookingId,
      'name': name,
      'age': age,
      'phoneNumber': phoneNumber,
      'email': email,
      'isMale': isMale,
      'problem': problem,
      'date': date.toIso8601String(),
      'time': time,
    };
  }
}
