import 'package:flutter/material.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

class RowBoxes extends StatelessWidget {
  RowBoxes({Key? key, required this.rowText}) : super(key: key);
  String rowText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 110,
      decoration: BoxDecoration(
          color: AppColors.pinkColor, borderRadius: BorderRadius.circular(6)),
      child: Text(
        rowText,
        style: AppStyles.whiteText,
      ),
    );
  }
}
