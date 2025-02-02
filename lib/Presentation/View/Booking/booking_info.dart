import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Models/bookin.dart';
import 'package:project_medihelp/Presentation/Common/mainbutton.dart';
import 'package:project_medihelp/Presentation/View/Booking/confome_page.dart';
import 'package:project_medihelp/Presentation/View/Booking/done_page.dart';
import 'package:project_medihelp/Services/firestore.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

class BookingInfoPage extends StatefulWidget {
  const BookingInfoPage({super.key});

  @override
  State<BookingInfoPage> createState() => _BookingInfoPageState();
}

class _BookingInfoPageState extends State<BookingInfoPage> {
  //set fireStore
  final Firestore _firestore = Firestore();
  //form validation
  final _formKey = GlobalKey<FormState>();
  //form controller
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emaiController = TextEditingController();
  final TextEditingController _problemController = TextEditingController();

  // Gender selection state
  String? _selectedGender; // "Male" or "Female"

  // Date and Time selection state
  DateTime? _setDate;
  TimeOfDay? _setTime;

  // Email validation regex
  final RegExp emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    _numberController.dispose();
    _emaiController.dispose();
    _problemController.dispose();
    _selectedGender = null;
    _setDate = null;
    _setTime = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Booking Info",
          style: GoogleFonts.prata(
            textStyle: TextStyle(
                color: kMainColor, fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp, // Replace with your desired icon
            color: kMainColor, // Use your custom color
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient Details",
                style: GoogleFonts.prata(
                  textStyle: TextStyle(
                    color: kMainColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Form(
                    key: _formKey,
                    child: SafeArea(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          //Name
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Background color for the input area
                                borderRadius: BorderRadius.circular(
                                    30), // Rounded corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: _nameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Name is required';
                                    } else if (value.length < 5) {
                                      return 'Name required minimum 5 characters';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Full Name",
                                    hintStyle: TextStyle(
                                      color: kMainColor,
                                      fontSize: 18,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      size: 20,
                                      color: kMainColor,
                                    ),
                                    border:
                                        InputBorder.none, // Removes the border
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //Age
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Background color for the input area
                                borderRadius: BorderRadius.circular(
                                    30), // Rounded corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: _ageController,
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Age is required';
                                    } else if (!RegExp(r"^[1-9][0-9]?$|^120$")
                                        .hasMatch(value)) {
                                      return 'Enter a valid age between 1 and 120';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Age",
                                    hintStyle: TextStyle(
                                      color: kMainColor,
                                      fontSize: 18,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person_add_alt_1_sharp,
                                      size: 20,
                                      color: kMainColor,
                                    ),
                                    border:
                                        InputBorder.none, // Removes the border
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //number
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Background color for the input area
                                borderRadius: BorderRadius.circular(
                                    30), // Rounded corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: _numberController,
                                  keyboardType: TextInputType.phone,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Phone number is required';
                                    } else if (!RegExp(r"^\d{10}$")
                                        .hasMatch(value)) {
                                      return 'Enter a valid 10-digit phone number';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Phone number",
                                    hintStyle: TextStyle(
                                      color: kMainColor,
                                      fontSize: 18,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.phone,
                                      size: 20,
                                      color: kMainColor,
                                    ),
                                    border:
                                        InputBorder.none, // Removes the border
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //email
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Background color for the input area
                                borderRadius: BorderRadius.circular(
                                    30), // Rounded corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: _emaiController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is required.";
                                    } else if (!emailRegex.hasMatch(value)) {
                                      return "Enter a valid email address.";
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(
                                      color: kMainColor,
                                      fontSize: 18,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      size: 20,
                                      color: kMainColor,
                                    ),
                                    border:
                                        InputBorder.none, // Removes the border
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Gender Selection
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: kMainColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: RadioListTile<String>(
                                          title: Text("Male"),
                                          value: "Male",
                                          groupValue: _selectedGender,
                                          activeColor: kMainColor,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedGender = value;
                                            });
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: RadioListTile<String>(
                                          title: Text("Female"),
                                          value: "Female",
                                          groupValue: _selectedGender,
                                          activeColor: kMainColor,
                                          onChanged: (value) {
                                            setState(() {
                                              _selectedGender = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Message
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[
                                    200], // Background color for the input area
                                borderRadius: BorderRadius.circular(
                                    30), // Rounded corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  controller: _problemController,
                                  maxLines: 5,
                                  decoration: InputDecoration(
                                    hintText: "Enter Your Problem..........",
                                    hintStyle: TextStyle(
                                      color: kMainColor,
                                      fontSize: 18,
                                    ),

                                    border:
                                        InputBorder.none, // Removes the border
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //Set Time and Date
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2024),
                                      lastDate: DateTime(2030),
                                    ).then((onValue) {
                                      if (onValue != null) {
                                        setState(() {
                                          _setDate = onValue;
                                        });
                                      }
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: kBacground,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.calendar_month_outlined,
                                            color: kMainColor,
                                            size: 30,
                                          ),
                                          Text(
                                            "Select Date",
                                            style: GoogleFonts.prata(
                                              textStyle: TextStyle(
                                                color: kMainColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    ).then((onValue) {
                                      if (onValue != null) {
                                        setState(() {
                                          _setTime = onValue;
                                        });
                                      }
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: kBacground,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(
                                            Icons.alarm_sharp,
                                            color: kMainColor,
                                            size: 30,
                                          ),
                                          Text(
                                            "Select Time",
                                            style: GoogleFonts.prata(
                                              textStyle: TextStyle(
                                                color: kMainColor,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 40,
                          ),
                          //Submit Button
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            child: GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState!.validate()) {
                                  String fullName = _nameController.text;
                                  String age = _ageController.text;
                                  String phoneNumber = _numberController.text;
                                  String email = _emaiController.text;
                                  String problem = _problemController.text;
                                  String gender = _selectedGender ?? '';
                                  DateTime date = _setDate ?? DateTime.now();
                                  TimeOfDay time = _setTime ?? TimeOfDay.now();

                                  // Convert TimeOfDay to a string
                                  String formattedTime =
                                      '${time.hour}:${time.minute}';

                                  // Generate a default ID using Firestore's doc().id method
                                  String bookingId = FirebaseFirestore.instance
                                      .collection('bookings')
                                      .doc()
                                      .id;

                                  //set  Booking
                                  Booking setBooking = Booking(
                                      bookingId: bookingId,
                                      name: fullName,
                                      age: age,
                                      phoneNumber: phoneNumber,
                                      email: email,
                                      isMale: gender,
                                      problem: problem,
                                      date: date,
                                      time: formattedTime);

                                  try {
                                    //save booking
                                    await _firestore.addBooking(setBooking);
                                    // Show a success message or navigate to another screen
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            'Booking information saved successfully!'),
                                      ),
                                    );
                                    //navigator
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ConfomePage()));
                                  } catch (e) {
                                    // Show error message
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('Failed to add booking: $e'),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: MainButton(
                                text: "Next",
                                buttonColor: kMainColor,
                                textColor: kWhirt,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
