class Doctor {
  final String doctorId;
  final String docName;
  final String docImg;
  final String catagory;
  final String shortDescription;
  final String description;
  final int expeYesr;
  final String workTime;
  final int startMark;
  final int comments;
  final bool isIn;
  bool isFavorit;

  Doctor({
    required this.doctorId,
    required this.docName,
    required this.docImg,
    required this.catagory,
    required this.shortDescription,
    required this.description,
    required this.expeYesr,
    required this.workTime,
    required this.startMark,
    required this.comments,
    required this.isIn,
    this.isFavorit = false,
  });
}
