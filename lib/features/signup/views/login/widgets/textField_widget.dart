import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    this.suffixIcon,
    required this.prefixIcon,
    required this.hint,
    super.key,
  });
  IconData? suffixIcon;
  IconData prefixIcon;
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFA4A4A4),
      decoration: InputDecoration(
          hintText: hint,
          suffixIcon: Icon(
            suffixIcon,
            size: 18,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              prefixIcon,
              size: 18,
            ),
          )),
      style: const TextStyle(color: Color(0xFFA4A4A4)),
    );
  }
}
