import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/pet_icons.dart';

class SplashLogoTitle extends StatelessWidget {
  const SplashLogoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          PetIcons.applogoleft_icon,
          color: Color(0xFFFFFFFF),
          shadows: [
            BoxShadow(
              color: const Color(0x000000).withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        SizedBox(
          width: 2.w,
        ),
        Icon(
          PetIcons.applogoright_icon,
          color: Color(0xFFFFFFFF),
          shadows: [
            BoxShadow(
              color: const Color(0x000000).withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        SizedBox(
          width: 9.7.w,
        ),
        Text(
          'healthypet',
          style: TextStyle(fontSize: 24, color: Colors.white, shadows: [
            BoxShadow(
              color: const Color(0x000000).withOpacity(0.25),
              blurRadius: 4,
              offset: const Offset(0, 4),
            ),
          ]),
        )
      ],
    );
  }
}
