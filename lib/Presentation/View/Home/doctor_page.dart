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
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-menN.png',
                favAmount: 5,
                commAmount: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-women.png',
                favAmount: 5,
                commAmount: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-menN.png',
                favAmount: 4,
                commAmount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-women.png',
                favAmount: 5,
                commAmount: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DoctorCart(
                docName: 'Dr. Alexander Bennett, Ph.D.',
                positionName: 'Dermato-Genetics',
                imgUrl: 'assets/img/doc-menN.png',
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
