import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({Key? key}) : super(key: key);

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Preview",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.sp,
          ),
        ),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.more_vert,
                color: Colors.black),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ],
        //<Widget>[]
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 200.h,),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top: 20),
              child: Container(
                width: 350.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Printer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp
                            ),
                          ),
                          SizedBox(width: 200.w,),
                          Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,),
                        ],
                      ),
                      Text('Not selected',
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[400]
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top:10),
              child: Container(
                width: 350.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w,),
                  child: Row(
                    children: [
                    Text('Copies',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp
                    ),),
                 SizedBox(width: 70.w,),
                      Padding(
                        padding: EdgeInsets.only(bottom:10.h),
                        child: IconButton(
                          icon: Icon(Icons.remove_circle_outline,
                            size: 40,
                            color: Colors.grey[400],
                          ),
                          onPressed: () {
                            setState(
                                  () {
                                count--;
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 25.w,),
                      Text('1',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp
                        ),
                      ),
                      SizedBox(width: 10.w,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0.h),
                        child: IconButton(
                          icon: Icon(Icons.add_circle_outline,
                            size: 40,
                            color: Colors.grey[400],
                          ),
                          onPressed: () {
                              setState(
                                    () {
                                  count++;
                                },
                              );
                            },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top: 10),
              child: Container(
                width: 350.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w,),
                  child: Row(
                    children: [
                      Text('Direction',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp
                        ),),
                      SizedBox(width: 70.w,),
                      Padding(
                        padding: EdgeInsets.only(bottom:10.h),
                        child: IconButton(
                          icon: Icon(Icons.rectangle_outlined,
                           size:40,
                            color: Colors.grey[400],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 30.w,),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.0.h),
                        child: IconButton(
                          icon: Icon(Icons.crop_portrait,
                            size: 45,
                            color: Colors.green[700],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top: 10),
              child: Row(
                children: [
                  Container(
                    width: 170.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only( top: 20.h),
                      child: Column(
                        children: [
                          Text('Pages',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              )
                          ),
                          Text('All',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400]
                            ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Container(
                    width: 170.w,
                    height:70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
                      child: Column(
                        children: [
                          Text('Color',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              )
                          ),
                          Text('color',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10.w, top: 10),
              child: Row(
                children: [
                  Container(
                    width: 170.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
                      child: Column(
                        children: [
                          Text('Paper Size',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              )
                          ),
                          Text('ISO A4',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400]
                            ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Container(
                    width: 170.w,
                    height: 70.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 30.0.w, top: 20.h),
                      child: Column(
                        children: [
                          Text('Print type',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp
                              )
                          ),
                          Text('single',
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h,bottom: 10.h),
              child: Container(
                width: 300,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Print'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey[350],
                    shape: const StadiumBorder(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
