import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:justtest/features/splash/views/splash/widgets/splashCircle_widget.dart';
import 'package:justtest/features/splash/views/splash/widgets/splashHeading_widget.dart';
import 'package:justtest/features/splash/views/splash/widgets/splashLogoTitle_widget.dart';
import 'package:justtest/features/splash/views/splash/widgets/splashRing_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      context.goNamed('login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF818AF9),
      body: Stack(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 97.h,
            ),
            const SplashLogoTitle(),
            SizedBox(
              height: 62.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 45.w),
              child: const SplashHeading(),
            ),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 720,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/splash_image.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 508.h,
            left: 322.w,
            child: CustomCircleDesign(
              radius: 10,
            ),
          ),
          Positioned(
              top: 524.h,
              left: 69.w,
              child: CustomCircleDesign(
                radius: 6,
                decoration: null,
              )),
          Positioned(top: 415.h, left: 324.w, child: const CustomRingDesign()),
          Positioned(top: 560.h, left: 69.w, child: const CustomRingDesign())
        ],
      ),
    );
  }
}
