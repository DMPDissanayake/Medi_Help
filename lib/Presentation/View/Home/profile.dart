import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/Common/about_card.dart';
import 'package:project_medihelp/Presentation/Common/detaile_card.dart';
import 'package:project_medihelp/Presentation/View/Onboradscreen/on_borad_screen.dart';
import 'package:project_medihelp/Services/authentication_services.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Auth _auth = Auth();

  void _confirmLogout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("No", style: TextStyle(color: kBlack)),
            ),
            TextButton(
              onPressed: () async {
                await _auth.signOut();
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnBoradScreen()),
                );
              },
              child: Text("Yes", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Account',
          style: TextStyle(
            color: kWhirt,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
              size: 30,
              color: kWhirt,
            ),
            onPressed: _confirmLogout,
          ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: kSubTitleColor,
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
                "Kaushalya",
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
                      "This is a description of the user and their profile information.",
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: DetaileCard(
                  name: "Kaushalya",
                  email: "ku12dissanayake@gmail.com",
                  phone: "071 1111111",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
