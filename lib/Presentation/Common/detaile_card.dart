import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';

class DetaileCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const DetaileCard({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: kMainColor, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account Details:",
              style: TextStyle(
                color: kWhirt,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(
                color: kWhirt,
                fontSize: 16,
              ),
            ),
            Text(
              email,
              style: TextStyle(
                color: kWhirt,
                fontSize: 16,
              ),
            ),
            Text(
              phone,
              style: TextStyle(
                color: kWhirt,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
