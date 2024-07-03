import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justtest/features/signup/views/addDetails/widgets/addDetailsTextField_widget.dart';
import 'package:justtest/features/signup/views/addDetails/widgets/agreeButton_widget.dart';

import '../../../../utils/constants/pet_icons.dart';

class AddDetailsScreen extends StatelessWidget {
  const AddDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80.h,
            ),
            Text(
              'add personal details',
              style: GoogleFonts.roboto(
                  fontSize: 22, color: const Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'helps to verify your identity during\naccount recovery',
              style: GoogleFonts.roboto(
                  fontSize: 16, color: const Color(0xFFCBC2DB)),
            ),
            SizedBox(
              height: 32.h,
            ),
            CustomAddDetailsTextField(
              hint: 'Display Name',
              suffixIcon: PetIcons.delete_icon,
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "visible to everyone",
              style: GoogleFonts.manrope(
                  color: const Color(0xFFFFFBFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomAddDetailsTextField(
              hint: 'Date of birth',
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "dd-mm-yyyy",
              style: GoogleFonts.manrope(
                  color: const Color(0xFFFFFBFF),
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomAddDetailsTextField(
              hint: 'Gender',
            ),
            SizedBox(
              height: 200.h,
            ),
            const Center(child: AgreeButton())
          ],
        ),
      ),
    );
  }
}
