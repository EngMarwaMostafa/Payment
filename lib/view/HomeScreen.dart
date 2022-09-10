import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payment/view/MoneyScreen.dart';

import '../widgets/Item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.green[900],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 170.w, top: 20.h),
              child: Row(
                children: [
                  Text(
                    'سندات الصرف',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25.sp),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward,
                        color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top: 20),
              child: Container(
                width: 350.w,
                height: 50.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.r)),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                      hintText: 'البحث باستخدام الرقم التعريفى أو اليدوى',
                      hintStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: 350.w,
                  height: 500.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7.r)),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return Item();
                    },
                    padding: EdgeInsets.all(10),
                    // scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.indigo[900],
        onPressed: () {
          Get.to(MoneyScreen());
        },
      ),
    );
  }
}
