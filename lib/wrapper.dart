import 'package:flutter/material.dart';
import 'package:project_medihelp/Models/user.dart';
import 'package:project_medihelp/Presentation/View/Authentication/authentication.dart';
import 'package:project_medihelp/Presentation/View/Home/home_main.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel?>(context);
    if (user == null) {
      return const Authentication();
    } else {
      return const HomeMain();
    }
  }
}
