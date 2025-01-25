import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';

class AboutCard extends StatelessWidget {
  final String aboutText;
  const AboutCard({
    super.key,
    required this.aboutText,
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
              "About",
              style: TextStyle(
                color: kWhirt,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              aboutText,
              style: TextStyle(
                color: kWhirt,
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
