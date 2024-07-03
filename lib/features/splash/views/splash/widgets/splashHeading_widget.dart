import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashHeading extends StatelessWidget {
  const SplashHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
            fontSize: 24, letterSpacing: 0.84, color: Color(0xFFDEE1FE)),
        children: <TextSpan>[
          TextSpan(
              text: 'Helping you \n to keep ', style: GoogleFonts.manrope()),
          TextSpan(
            text: 'your bestie\n',
            style: GoogleFonts.manrope(
                fontWeight: FontWeight.bold, color: const Color(0xFFFFFFFF)),
          ),
          TextSpan(text: ' stay healthy!', style: GoogleFonts.manrope()),
        ],
      ),
    );
  }
}
