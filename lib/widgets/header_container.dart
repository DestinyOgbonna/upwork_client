import 'package:flutter/material.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

// ignore: must_be_immutable
class HeaderContainer extends StatelessWidget {
  HeaderContainer({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);
  String firstText;
  String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.pinkColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: AppStyles.whiteText,
          ),
          Text(
            secondText,
            style: AppStyles.whiteText,
          ),
        ],
      ),
    );
  }
}

class HeadContainer extends StatelessWidget {
  HeadContainer({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);
  String firstText;
  String secondText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.pinkColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstText,
            style: AppStyles.secondwhiteText,
          ),
          Text(
            secondText,
            style: AppStyles.secondwhiteText,
          ),
        ],
      ),
    );
    ;
  }
}
