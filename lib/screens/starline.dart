import 'package:flutter/material.dart';
import 'package:upwork_client/screens/game_time.dart';
import 'package:upwork_client/screens/payment.dart';
import 'package:upwork_client/widgets/app_bar.dart';
import 'package:upwork_client/widgets/header_container.dart';
import 'package:upwork_client/widgets/row_boxes.dart';
import 'package:upwork_client/widgets/times.dart';

class StarlineGame extends StatelessWidget {
  const StarlineGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: appBarMain('Starline Game')),
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
              children: [
                HeadContainer(
                    firstText:
                        'Single Digit - Rs10 - Rs100, Single Pana -Rs10 -Rs1600',
                    secondText:
                        'Double Pana- Rs10 - Rs100, Triple Pana -Rs10 -Rs1600'),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PaymentPage()));
                          },
                          child: RowBoxes(rowText: 'Bid History')),
                      RowBoxes(rowText: 'Game Result'),
                      RowBoxes(rowText: 'Game Chart'),
                    ],
                  ),
                ),
                SecondCustom(
                  time: '08:00AM',
                  price: '900-9',
                ),
                const SizedBox(
                  height: 25,
                ),
                SecondCustom(
                  time: '08:00AM',
                  price: '900-9',
                ),
                const SizedBox(
                  height: 25,
                ),
                SecondCustom(
                  time: '08:00AM',
                  price: '900-9',
                ),
                const SizedBox(
                  height: 25,
                ),
                SecondCustom(
                  time: '08:00AM',
                  price: '900-9',
                ),
                const SizedBox(
                  height: 25,
                ),
                SecondCustom(
                  time: '08:00AM',
                  price: '900-9',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
