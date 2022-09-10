import 'package:get/get_navigation/get_navigation.dart';
import 'package:payment/view/HomeScreen.dart';
import 'package:payment/view/SplashScreen.dart';
import 'package:payment/view/SplashScreen.dart';
import 'package:payment/view/SplashScreen.dart';

import '../view/MoneyScreen.dart';
import '../view/PrintScreen.dart';
import '../view/SplashScreen.dart';
import '../view/SplashScreen.dart';
import '../view/SplashScreen.dart';
import '../view/SplashScreen.dart';
import '../view/SplashScreen.dart';

class AppRoute{
  static const onBoardScreen = Routes.onBoardScreen;

  static final routes = [

    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
    ),

    GetPage(
      name: Routes.moneyScreen,
      page: () => MoneyScreen(),
    ),

    GetPage(
      name: Routes.printScreen,
      page: () => PrintScreen(),
    ),

  GetPage(
  name: Routes.onBoardScreen,
  page: () => OnBoardScreen(),
  ),
  ];
}

class Routes {
  static const onBoardScreen = '/onBoardScreen';
  static const homeScreen = '/homeScreen';
  static const moneyScreen = '/moneyScreen';
  static const printScreen = '/printScreen';
}