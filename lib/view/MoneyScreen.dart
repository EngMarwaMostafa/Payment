import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:payment/controllers/PaymenControllerl.dart';
import 'package:payment/view/PrintScreen.dart';

import '../controllers/RecListController.dart';

class MoneyScreen extends StatefulWidget {
  MoneyScreen({Key? key}) : super(key: key);

  @override
  State<MoneyScreen> createState() => _MoneyScreenState();
}

class _MoneyScreenState extends State<MoneyScreen> {

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(RecController());
    final paymentController = Get.put(PaymentController());

    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          "إنشاء سند القبض",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
        ),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.arrow_right_alt_sharp),
            tooltip: 'Back Icon',
            onPressed: () {
              Get.back();
            },
          ), //IconButton
        ],
        //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {
            Get.to(PrintScreen());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 320.w,
                height: 370.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 10.h),
                      child: Text(
                        'رقم السند',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Container(
                        width: 320.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          controller: controller.textEditingControllerNo,
                          onChanged:(value) {
                            controller.nomber.value = value;
                          },
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 10.h),
                      child: Text(
                        'تاريخ السند',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0.w, right: 10.w),
                      child: Row(
                        children: [
                          Container(
                            width: 145.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                topLeft: Radius.circular(10.r),
                              ),
                            ),
                            child: TextField(
                              controller: controller.textEditingControllerTime,
                              onChanged:(value) {
                                controller.time.value = value;
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Container(
                            width: 145.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10.r),
                                topRight: Radius.circular(10.r),
                              ),
                            ),
                            child: TextField(
                              controller: controller.textEditingControllerDate,
                              onChanged:(value) {
                                controller.date.value = value;
                              },
                              cursorColor: Colors.black,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 10.h),
                      child: Text(
                        'نوع القبض',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, top: 1.h, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                    /*   Obx(() =>   DropdownButton<String>(
                              value: dropdownValue,
                              items: items.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  dropdownValue = newValue!;
                                });
                              }),),*/
                          Text(
                            'إشعار خصم',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 320.w,
                height: 370.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 170.w, top: 10.h),
                      child: Text(
                        'حساب المسدد',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Container(
                        width: 320.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            suffixIcon:Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 10.h),
                      child: Text(
                        'قيمة السند',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Container(
                        width: 320.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10.r)),
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintText: '   ...ادخل القيمة \$',
                            contentPadding: EdgeInsets.only(left: 150.w),
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 180.w, top: 10.h),
                      child: Text(
                        'طرق الدفع',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 30.w, top: 1.h, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      /*    Obx(() =>   DropdownButton<String>(
                            onChanged: (newValue) {
                              PaymentController.setSelected(newValue!);
                            },
                            value: PaymentController.selected.value,
                            items: PaymentController.listType.map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(
                                  selectedType,
                                ),
                                value: selectedType,
                              );
                            }).toList(),
                          )
                          ),*/

                          Text(
                            'نقدي',
                            style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 320.w,
                height: 350.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w,top: 20.h),
                      child: Container(
                        height: 60.h,
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                           // contentPadding: EdgeInsets.only(left: 50.0.w),
                            suffixIcon:Icon (Icons.remove_red_eye_outlined,
                            color: Colors.green[900],),
                            prefixIcon: Icon(Icons.camera_alt,
                            color: Colors.green[900],),
                            hintText: '   ...لايوجد صور مرفقة ',
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 180.w,),
                      child: Text(
                        "ملاحظات",
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          //   fontFamily: f,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w,top: 20.h),
                      child: Container(
                        height: 60.h,
                        child: TextField(
                          cursorColor: Colors.black,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            hintStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

