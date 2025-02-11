import 'package:flutter/material.dart';
import 'package:project_medihelp/Constant/colors.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const SearchWidget({
    Key? key,
    required this.controller,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(color: kMainColor), // Set input text color
        decoration: InputDecoration(
          hintText: "Search doctors...",
          hintStyle: TextStyle(color: kMainColor), // Hint text color
          prefixIcon: Icon(Icons.search, color: kMainColor), // Icon color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor:
              const Color.fromARGB(255, 255, 255, 255), // Background color
        ),
      ),
    );
  }
}
