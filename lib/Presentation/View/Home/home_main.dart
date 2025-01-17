import 'package:flutter/material.dart';

import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
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
  // PersistentTabController to manage the current tab index
  int _currentIndex = 0;

  // Define the screens/pages
  final List<Widget> _pages = [
    const Home(),
    const Schedule(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 20,
        ),
        selectedItemColor: kMainColor,
        unselectedItemColor: kSubTitleColor,
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
    );
  }
}
