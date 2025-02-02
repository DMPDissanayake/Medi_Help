class UserModel {
  final String uId;
  String? userName;
  String? userNumber;
  String? userEmail;
  String? userPassword;

  UserModel({
    required this.uId,
    this.userName,
    this.userNumber,
    this.userEmail,
    this.userPassword,
  });

  // Factory constructor to create a User instance from a JSON map
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uId: json['uId'],
      userName: json['userName'],
      userNumber: json['userNumber'],
      userEmail: json['userEmail'],
      userPassword: json['userPassword'],
    );
  }

  // Method to convert a User instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'uId': uId,
      'userName': userName,
      'userNumber': userNumber,
      'userEmail': userEmail,
      'userPassword': userPassword,
    };
  }
}
