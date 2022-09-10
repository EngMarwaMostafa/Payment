import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:payment/Routes/routes.dart';
import 'package:payment/view/HomeScreen.dart';
import 'package:payment/view/MoneyScreen.dart';
import 'package:payment/view/PrintScreen.dart';
import 'package:payment/view/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize : const Size(375,667),
      splitScreenMode: true,
      builder:  (context , child) =>
          GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
           initialRoute: AppRoute.onBoardScreen,
           getPages: AppRoute.routes,
            home: HomeScreen(),
          ),
    );
  }
}
