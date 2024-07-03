import 'package:flutter/material.dart';

class SocialMediaLoginButtons extends StatelessWidget {
  SocialMediaLoginButtons({
    // ignore: non_constant_identifier_names
    required this.SocialMediaIcon,
    super.key,
  });
  String SocialMediaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 58,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xFFAFAFAF),
            width: 2,
          )),
      child: Center(
        child: Image.asset(
          SocialMediaIcon,
          height: 25,
          width: 25,
        ),
      ),
    );
  }
}
