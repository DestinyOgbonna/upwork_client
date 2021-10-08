import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';
import 'package:upwork_client/screens/message.dart';
import 'package:upwork_client/screens/starline.dart';
import 'package:upwork_client/widgets/app_bar.dart';

import 'game_time.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: appBarMain('SKS MATKA')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/pattern.jpg'), fit: BoxFit.cover)),
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          // height: 60,
                          // width: 30,
                          color: Colors.pink,
                          child: Image.asset(
                            'images/whatsapp.png',
                            height: 40,
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        color: Colors.pink,
                        child: const Icon(
                          Icons.headphones,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 290,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/background.jpg'),
                            fit: BoxFit.cover)),
                    child: Text(
                      'SKS MATKA',
                      style: GoogleFonts.rakkas(
                          fontSize: 35,
                          fontWeight: FontWeight.w100,
                          color: AppColors.whiteTextColor),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          // height: 60,
                          width: 40,
                          color: Colors.pink,
                          child: Image.asset(
                            'images/whatsapp.png',
                            height: 40,
                          )),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        color: Colors.pink,
                        child: const Icon(
                          Icons.star,
                          color: AppColors.whiteTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          left:
                              BorderSide(color: AppColors.pinkColor, width: 4),
                          right:
                              BorderSide(color: AppColors.pinkColor, width: 4),
                          top: BorderSide(color: AppColors.pinkColor, width: 1),
                          bottom: BorderSide(
                              color: AppColors.pinkColor, width: 1))),
                  child: ListTile(
                      title: Text(
                        'Starline Game',
                        style: AppStyles.pinkText,
                      ),
                      trailing: Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const StarlineGame()));
                              },
                              child: Icon(Icons.send))))),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: const BoxDecoration(
                      border: Border(
                          left:
                              BorderSide(color: AppColors.pinkColor, width: 4),
                          right:
                              BorderSide(color: AppColors.pinkColor, width: 4),
                          top: BorderSide(color: AppColors.pinkColor, width: 1),
                          bottom: BorderSide(
                              color: AppColors.pinkColor, width: 1))),
                  child: ListTile(
                      title: Text(
                        'Gali Deswar Game',
                        style: AppStyles.pinkText,
                      ),
                      trailing: Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GameTime()));
                              },
                              child: const Icon(Icons.send))))),

              /////////////////////////
              ///

              Stack(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: AppColors.pinkColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 39.0,
                          ),
                          child: Text(
                            'SRIDEVI DAY',
                            style: AppStyles.whiteText,
                          ),
                        ),
                        Text(
                          '345-34-577',
                          style: AppStyles.whiteText,
                        ),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 38.0, top: 6),
                                  child: Column(
                                    children: [
                                      Text(
                                        '07:00 AM',
                                        style: AppStyles.blackText,
                                      ),
                                      Text(
                                        '08:00 AM',
                                        style: AppStyles.blackText,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 38.0),
                                  child: Column(
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
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.calendar_view_month)),
                      Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.send))
                    ],
                  )
                ],
              ),

              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Messages()));
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 15),
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: AppColors.pinkColor,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 39.0,
                            ),
                            child: Text(
                              'RUDRAKSH MORNING',
                              style: AppStyles.whiteText,
                            ),
                          ),
                          Text(
                            '380-19-370',
                            style: AppStyles.whiteText,
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 38.0, top: 6),
                                    child: Column(
                                      children: [
                                        Text(
                                          '10:00 AM',
                                          style: AppStyles.blackText,
                                        ),
                                        Text(
                                          '11:00 AM',
                                          style: AppStyles.blackText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 38.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.calendar_view_month)),
                      Container(
                          height: 40,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: AppColors.whiteTextColor,
                              shape: BoxShape.circle),
                          child: const Icon(Icons.send))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
