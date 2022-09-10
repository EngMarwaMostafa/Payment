
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'HomeScreen.dart';


class OnBoardScreen extends StatelessWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomeScreen(),
      image: Image.network(
          'https://img.freepik.com/free-photo/american-dollars-cash-money-sack-black-table-dark-room_1150-18242.jpg?w=2000'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: const TextStyle(color: Colors.white),
      photoSize: 200.0,
      loaderColor: Colors.greenAccent,
    );
  }
}
