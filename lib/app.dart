import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:justtest/features/splash/views/splash/splashscreen.dart';
import 'package:justtest/utils/theme/themes.dart';

import 'features/signup/views/addDetails/addDetailsscreen.dart';
import 'features/signup/views/login/loginscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (_, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: child,
              theme: HAppTheme.customTheme);
        },
        child: AddDetailsScreen());
  }
}
