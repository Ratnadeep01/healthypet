import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF9C3FE4), Color(0xFFC65647)],
        ),
      ),
      child: MaterialButton(
        onPressed: () {},
        height: 50.h,
        minWidth: 314.w,
        child: Center(
          child: Text(
            'Sign in',
            style: GoogleFonts.poppins(color: Color(0xFFFFFFFF), fontSize: 18),
          ),
        ),
      ),
    );
  }
}
