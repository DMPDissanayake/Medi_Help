import 'package:flutter/material.dart';
import 'package:project_medihelp/Presentation/View/Onboradscreen/on_borad_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediHelp',
      home: OnBoradScreen(),
    );
  }
}
