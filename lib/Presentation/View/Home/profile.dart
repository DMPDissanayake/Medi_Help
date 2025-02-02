import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/about_card.dart';
import 'package:project_medihelp/Presentation/Common/detaile_card.dart';
import 'package:project_medihelp/Presentation/View/Authentication/login_page.dart';
import 'package:project_medihelp/Services/authentication_services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final Auth _auth = Auth();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMainColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.prata(
            textStyle: TextStyle(
              color: kWhirt,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.logout,
                size: 30,
                color: kWhirt,
              ),
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: kBacground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/img/Profile.png",
                    width: 150, fit: BoxFit.cover),
              ),
              const SizedBox(height: 10),
              Text(
                "Kaushalya Dissanayake",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: AboutCard(
                  aboutText:
                      "The fourth person, also a man, is farther to the right, walking away from the stop. He appears to have a backpack, and is wearing a light-colored top and light-colored jeans.  A light pole is positioned to the left of the shelter structure, and the background shows small greenery and a light-blue sky with a few clouds.",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DetaileCard(
                  name: "Kaushalya Dissanayake",
                  email: "kaudissanayke@gmail.com",
                  phone: "071 4455693",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
