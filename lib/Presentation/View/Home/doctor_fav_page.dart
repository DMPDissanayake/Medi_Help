import 'package:flutter/material.dart';

class DoctorFavPage extends StatefulWidget {
  const DoctorFavPage({super.key});

  @override
  State<DoctorFavPage> createState() => _DoctorFavPageState();
}

class _DoctorFavPageState extends State<DoctorFavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Doctor Fav Page"),
      ),
    );
  }
}
