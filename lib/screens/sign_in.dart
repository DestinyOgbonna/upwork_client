import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_field.dart';
import 'package:upwork_client/constants/text_style.dart';
import 'package:upwork_client/screens/splash_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'images/pattern.jpg',
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Image.asset('images/sks-matka.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.pinkColor,
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 19),
                        child: CustomTextField(
                            hintText: 'User Id',
                            hintStyle: AppStyles.whiteText,
                            obscureText: false)),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.pinkColor,
                      ),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 30),
                      child: CustomTextField(
                          hintText: 'Password',
                          hintStyle: AppStyles.whiteText,
                          obscureText: true)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 58.0),
                        child: Text('Sign In',
                            style: GoogleFonts.rakkas(
                                color: AppColors.pinkColor, fontSize: 39)),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SplashScreen()));
                        },
                        child: Container(
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                                color: AppColors.pinkColor,
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.arrow_forward,
                              size: 60,
                              color: AppColors.whiteTextColor,
                            )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Sign Up',
                          style: GoogleFonts.rakkas(
                              color: AppColors.pinkColor, fontSize: 39)),
                      Text('Forgot Password?',
                          style: GoogleFonts.rakkas(
                              color: AppColors.pinkColor, fontSize: 29)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
