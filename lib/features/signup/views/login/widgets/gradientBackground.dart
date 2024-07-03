import 'package:flutter/material.dart';

class GradientBackground {
  GradientBackground._();

  static BoxDecoration Loginbggradient() {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.0, 0.34, 0.47, 0.57, 0.70, 1.0],
        colors: [
          Color(0xFF171717),
          Color(0xFF1F001C),
          Color(0xFF1C0C1B),
          Color(0xFF19161A),
          Color(0xFF3B0045),
          Color(0xFF171717)
        ],
      ),
    );
  }
}
