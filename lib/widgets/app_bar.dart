import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

Widget appBarMain(String header) {
  return AppBar(
    iconTheme: const IconThemeData(color: AppColors.whiteTextColor),
    // actions: [
    // GestureDetector(
    //   onTap: () {},
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 19.0, vertical: 19),
    //     child: Text(
    //       'Done',
    //       style: greenTextStyle(),
    //     ),
    //   ),
    // )
    // ],
    backgroundColor: AppColors.pinkColor,
    title: Text(header,
        style: GoogleFonts.rakkas(
            fontSize: 35,
            fontWeight: FontWeight.w100,
            color: AppColors.whiteTextColor)),
  );
}
