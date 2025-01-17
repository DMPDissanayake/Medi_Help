import 'package:flutter/material.dart';
import 'package:project_medihelp/Presentation/View/Onboradscreen/widgets/one_on_borad_screen.dart';
import 'package:project_medihelp/Presentation/View/Onboradscreen/widgets/two_on_borad_screen.dart';

class OnBoradScreen extends StatefulWidget {
  const OnBoradScreen({super.key});

  @override
  State<OnBoradScreen> createState() => _OnBoradScreenState();
}

class _OnBoradScreenState extends State<OnBoradScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Stack(
            children: [
              PageView(
                children: [
                  OneOnBoradScreen(),
                  TwoOnBoradScreen(),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
