import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/doctorcrad.dart';
import 'package:project_medihelp/Presentation/Common/search_bar.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacground.withOpacity(0.5),
        centerTitle: true,
        title: Text(
          "Doctors",
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
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: kBacground.withOpacity(0.5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  //serach
                  SearchWidget(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Rajesh Malhotra',
                positionName: 'Cardiologist',
                imgUrl: 'assets/docImg/r-men_doc.jpg',
                favAmount: 5,
                commAmount: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Meera Sinha',
                positionName: 'Neurologist',
                imgUrl:
                    'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.44_43877ef0.jpg',
                favAmount: 2,
                commAmount: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: ' Dr. Arvind Kapoor ',
                positionName: 'Orthopedic Surgeon',
                imgUrl:
                    'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.44_a04e7677.jpg',
                favAmount: 4,
                commAmount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Kavita Deshmukh',
                positionName: 'Oncologist',
                imgUrl:
                    'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.45_b03a7d7f.jpg',
                favAmount: 5,
                commAmount: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Pediatrician',
                imgUrl:
                    'assets/docImg/WhatsApp Image 2025-01-26 at 04.05.46_d96b368f.jpg',
                favAmount: 3,
                commAmount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
