import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justtest/features/signup/views/login/widgets/gradientBackground.dart';
import 'package:justtest/features/signup/views/login/widgets/loginButton.dart';
import 'package:justtest/features/signup/views/login/widgets/socialMediaLoginButton_widget.dart';
import 'package:justtest/features/signup/views/login/widgets/textField_widget.dart';

import '../../../../utils/constants/pet_icons.dart';
import '../../controllers/login_controllers.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // LoginControllers loginControllers = LoginControllers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: GradientBackground.Loginbggradient(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100.h,
              ),
              Text(
                'Welcome Back!',
                style: GoogleFonts.poppins(
                    fontSize: 40,
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'welcome back we missed you',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username',
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Color(0xFFA4A4A4)),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                prefixIcon: PetIcons.username_icon,
                hint: 'Username',
              ),
              SizedBox(
                height: 24.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Color(0xFFA4A4A4)),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextField(
                prefixIcon: PetIcons.password_icon,
                hint: 'Password',
                suffixIcon: PetIcons.seepassword_icon,
              ),
              SizedBox(
                height: 12.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                      fontSize: 14, color: Color(0xFFA4A4A4)),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              const LoginButton(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/leftDivider_image.png"),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text('Or Continue with',
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Color(0xFFA4A4A4))),
                  SizedBox(
                    width: 8.w,
                  ),
                  Image.asset("assets/images/rightDivider_image.png"),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      try {
                        // await loginControllers.googleSignIn(context: context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const AddDetailsScreen()),
                        // );
                      } catch (e) {
                        print(e);
                      }
                    },
                    child: SocialMediaLoginButtons(
                      SocialMediaIcon: "assets/images/google_image.png",
                    ),
                  ),
                  SocialMediaLoginButtons(
                    SocialMediaIcon: "assets/images/apple_image.png",
                  ),
                  SocialMediaLoginButtons(
                    SocialMediaIcon: "assets/images/facebook_image.png",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
