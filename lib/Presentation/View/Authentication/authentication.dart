import 'package:flutter/material.dart';
import 'package:project_medihelp/Presentation/View/Onboradscreen/on_borad_screen.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  get someArgument => null;
  @override
  Widget build(BuildContext context) {
    return OnBoradScreen();
  }
}
