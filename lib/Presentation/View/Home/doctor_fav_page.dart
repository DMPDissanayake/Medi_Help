import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/docter_fav_card.dart';
import 'package:project_medihelp/Presentation/Common/doctorcrad.dart';
import 'package:project_medihelp/Presentation/Common/search_bar.dart';
import 'package:project_medihelp/Provider/doctor_provider.dart';
import 'package:provider/provider.dart';

class DoctorFavPage extends StatefulWidget {
  const DoctorFavPage({super.key});

  @override
  State<DoctorFavPage> createState() => _DoctorFavPageState();
}

class _DoctorFavPageState extends State<DoctorFavPage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final doctorProvider = Provider.of<DoctorProvider>(context);
    final filteredDoctors = doctorProvider.favoriteDoctors
        .where((doctor) =>
            doctor.docName.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kBacground.withOpacity(0.5),
          title: Text(
            "Favorite Doctors",
            style: GoogleFonts.prata(
              textStyle: TextStyle(
                  color: kMainColor, fontWeight: FontWeight.w600, fontSize: 20),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: kMainColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
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
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchQuery = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search favorite doctors...",
                        hintStyle: TextStyle(color: kMainColor),
                        prefixIcon: Icon(Icons.search, color: kMainColor),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: filteredDoctors.length,
                itemBuilder: (context, index) {
                  final doctor = filteredDoctors[index];
                  return DoctorCart(doctor: doctor);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
