import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_field.dart';
import 'package:upwork_client/screens/game_time.dart';
import 'package:upwork_client/widgets/app_bar.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: appBarMain('Admin Support')),
      // ignore: avoid_unnecessary_containers
      body: Container(
        margin: const EdgeInsets.only(bottom: 19),
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.whiteTextColor,
          ),
          child: CustomTextField(
            hintText: 'Type Messsage',
            hintStyle:
                GoogleFonts.rakkas(color: Color(0xffCBCBCB), fontSize: 19),
            obscureText: false,
            suffixIcon: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GameTime()));
              },
              child: const Icon(
                Icons.send,
                color: AppColors.pinkColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
