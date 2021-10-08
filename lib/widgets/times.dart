import 'package:flutter/material.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.time})
      : super(
          key: key,
        );

  String firstText;
  String secondText;
  String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: AppColors.pinkColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 19.0),
            child: Text(
              firstText,
              style: AppStyles.whiteText,
            ),
          ),
          Text(
            secondText,
            style: AppStyles.whiteText,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      time,
                      style: AppStyles.blackText,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CLOSED',
                        style: AppStyles.pinkText,
                      ),
                      Text(
                        '00:00:00',
                        style: AppStyles.blackText,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Icon(Icons.send),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class SecondCustom extends StatelessWidget {
  SecondCustom({Key? key, required this.time, required this.price})
      : super(
          key: key,
        );

  String time;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 20),
              child: Column(
                children: [
                  Text(
                    time,
                    style: AppStyles.blackText,
                  ),
                  Text(
                    price,
                    style: AppStyles.pinkText,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CLOSED',
                  style: AppStyles.pinkText,
                ),
                Text(
                  '00:00:00',
                  style: AppStyles.blackText,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(Icons.send),
            ),
          ],
        ));
  }
}
