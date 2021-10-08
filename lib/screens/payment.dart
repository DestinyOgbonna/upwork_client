import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';
import 'package:upwork_client/screens/message.dart';
import 'package:upwork_client/widgets/app_bar.dart';
import 'package:upwork_client/widgets/payment_card.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: appBarMain('Add Fund')),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                  alignment: Alignment.center,
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.pinkColor,
                  ),
                  child: Text('0.0',
                      style: GoogleFonts.rakkas(
                          fontSize: 40,
                          fontWeight: FontWeight.w100,
                          color: AppColors.whiteTextColor)),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 19),
                  alignment: Alignment.centerLeft,
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: AppColors.blackColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child:
                        Text('Enter Amount To Add', style: AppStyles.whiteText),
                  ),
                ),
                PaymentCard(
                  payOption: 'Pay By PhonePe',
                  option: 'Auto Credit',
                  imageUrl: 'images/phone-pay.png',
                ),
                PaymentCard(
                  payOption: 'Pay By GPay',
                  option: 'Auto Credit',
                  imageUrl: 'images/google-pay.png',
                ),
                PaymentCard(
                  payOption: 'Pay By Other',
                  option: 'Auto Credit',
                  imageUrl: 'images/upi.png',
                ),
                PaymentCard(
                  payOption: 'Pay By Paytm',
                  option: 'Admin Approval',
                  imageUrl: 'images/paytm.png',
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Messages()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 19),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: AppColors.pinkColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Add Fund',
                      style: AppStyles.whiteText,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
