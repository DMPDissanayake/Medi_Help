import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: TextField(
        style: const TextStyle(
          color: kMainColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100), // Add rounded corners
            borderSide: const BorderSide(
              color: Colors.transparent, // Transparent border
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100), // Add rounded corners
            borderSide: const BorderSide(
              color: Colors.transparent, // Transparent border
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          hintText: "Search....",
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 183, 197, 245),
            fontSize: 18,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: kMainColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
