import 'package:flutter/material.dart';

import 'package:project_medihelp/Constant/colors.dart';
import 'package:project_medihelp/Presentation/View/Home/home.dart';
import 'package:project_medihelp/Presentation/View/Home/profile.dart';
import 'package:project_medihelp/Presentation/View/Home/schedule.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Schedule(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Transform.translate(
        offset: const Offset(0, -20), // Move the container upwards
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white, // Custom background color
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), // Rounded top corners
                topRight: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: BottomNavigationBar(
                backgroundColor: const Color.fromARGB(
                    255, 181, 195, 241), // Background color
                selectedLabelStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                selectedIconTheme: const IconThemeData(
                  size: 30,
                ),
                unselectedIconTheme: const IconThemeData(
                  size: 20,
                ),
                selectedItemColor: kMainColor, // Custom active item color
                unselectedItemColor: kWhirt, // Custom inactive item color
                elevation: 0, // Removes default elevation
                currentIndex: _currentIndex,
                onTap: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_work_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month_outlined),
                    label: 'Schedule',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_3),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
