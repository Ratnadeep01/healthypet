import 'package:flutter/material.dart';

class CustomCircleDesign extends StatelessWidget {
  CustomCircleDesign({
    super.key,
    required this.radius,
    this.decoration,
  });
  double radius;
  Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0x000000),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0x000000).withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ]),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}
