class Doctor {
  final int doctorId;
  final String docName;
  final String catagory;
  final String shortDescription;
  final String description;
  final int expeYesr;
  final DateTime workTime;
  final int startMark;
  final int comments;
  final bool isIn;
  final bool isFavorit;

  Doctor({
    required this.doctorId,
    required this.docName,
    required this.catagory,
    required this.shortDescription,
    required this.description,
    required this.expeYesr,
    required this.workTime,
    required this.startMark,
    required this.comments,
    required this.isIn,
    required this.isFavorit,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) {
    return Doctor(
      doctorId: json['doctorId'],
      docName: json['docName'],
      catagory: json['catagory'],
      shortDescription: json['shortDescription'],
      description: json['description'],
      expeYesr: json['expeYesr'],
      workTime: DateTime.parse(json['workTime']),
      startMark: json['startMark'],
      comments: json['comments'],
      isIn: json['isIn'],
      isFavorit: json['isFavorit'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'doctorId': doctorId,
      'docName': docName,
      'catagory': catagory,
      'shortDescription': shortDescription,
      'description': description,
      'expeYesr': expeYesr,
      'workTime': workTime.toIso8601String(),
      'startMark': startMark,
      'comments': comments,
      'isIn': isIn,
      'isFavorit': isFavorit,
    };
  }
}
