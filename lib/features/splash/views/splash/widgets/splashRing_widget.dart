import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRingDesign extends StatelessWidget {
  const CustomRingDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 7.w,
      height: 7.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFF81ECFF),
          width: 2.w,
        ),
      ),
    );
  }
}
