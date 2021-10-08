import 'package:flutter/material.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

class PaymentCard extends StatelessWidget {
  PaymentCard(
      {Key? key,
      required this.imageUrl,
      required this.option,
      required this.payOption})
      : super(key: key);

  String imageUrl;
  String payOption;
  String option;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: const BoxDecoration(
            color: AppColors.pinkColor,
          ),
          height: 70,
          width: MediaQuery.of(context).size.width * 0.7,
          child: ListTile(
            leading: const Icon(
              Icons.radio_button_checked_sharp,
              color: AppColors.whiteTextColor,
            ),
            title: Text(
              payOption,
              style: AppStyles.whiteText,
            ),
            subtitle: Text(
              option,
              style: AppStyles.blackText,
            ),
          ),
        ),
        Container(
            decoration: const BoxDecoration(
              color: AppColors.whiteTextColor,
            ),
            height: 70,
            width: 100,
            child: Image.asset(imageUrl)),
      ],
    );
  }
}
