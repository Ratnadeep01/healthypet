import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomAddDetailsTextField extends StatelessWidget {
  CustomAddDetailsTextField({
    this.suffixIcon,
    required this.hint,
    super.key,
  });
  IconData? suffixIcon;
  String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFFFFBFF),
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: Icon(
          suffixIcon,
          size: 18,
        ),
        hintStyle: GoogleFonts.manrope(
            color: const Color(0xFFFFFBFF), fontWeight: FontWeight.w200),
      ),
      style: const TextStyle(color: Color(0xFFFFFBFF)),
    );
  }
}
