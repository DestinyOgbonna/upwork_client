import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upwork_client/screens/payment.dart';
import 'package:upwork_client/screens/starline.dart';
import 'package:upwork_client/widgets/app_bar.dart';
import 'package:upwork_client/widgets/header_container.dart';
import 'package:upwork_client/widgets/row_boxes.dart';
import 'package:upwork_client/widgets/times.dart';

class GameTime extends StatelessWidget {
  const GameTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: appBarMain('Gali Desawar Game')),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/pattern.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  HeaderContainer(
                      firstText:
                          'Left Digit - Rs10 - Rs90, Right Digit -Rs10 -Rs90',
                      secondText: 'Jodi Digit - Rs10 - Rs900'),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RowBoxes(rowText: 'Bid History'),
                        RowBoxes(rowText: 'Game Result'),
                        RowBoxes(rowText: 'Game Chart'),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentPage()));
                    },
                    child: CustomContainer(
                      firstText: 'DESAWAR - DS',
                      secondText: '81',
                      time: '04:30 AM',
                    ),
                  ),
                  CustomContainer(
                    firstText: 'fARIDABAD - FB',
                    secondText: '**',
                    time: '05:45 AM',
                  ),
                  CustomContainer(
                    firstText: 'GAZIYABAAD - GB',
                    secondText: '**',
                    time: '08:30 AM',
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
