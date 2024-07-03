import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AgreeButton extends StatelessWidget {
  const AgreeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 60.h)),
        elevation: WidgetStateProperty.all(0),
        backgroundColor:
            WidgetStateProperty.all(Color(0xFF4A4458).withOpacity(0.6)),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        )),
      ),
      child: Text(
        'AGREE & CONTINUE',
        textAlign: TextAlign.center,
        style: GoogleFonts.roboto(
          fontSize: 22,
          color: Color(0xFFE8DEF8),
        ),
      ),
    );
  }
}
