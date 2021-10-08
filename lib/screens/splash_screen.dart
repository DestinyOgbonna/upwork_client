import 'package:flutter/material.dart';
import 'package:upwork_client/screens/home.dart';
import 'package:upwork_client/screens/starline.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/background.jpg',
                ),
                fit: BoxFit.cover)),
        child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: Image.asset('images/logo.png')),
      ),
    );
  }
}
