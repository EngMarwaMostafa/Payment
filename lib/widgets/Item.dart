import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
  }) : super(key: key);

  /*final String? no;
  final String? main;
  final String? total;
  final String? money;
  final String? tax;
  final String? charge;
  final String? period;*/

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      elevation: 3,
      child: Container(
        height: 150.h,
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20.w,),
                    const Text(
                      '00000',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.label),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'الصندوق الرئيسي',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Icon(Icons.person),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      "الاجمالي",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    const Icon(Icons.attach_file),
                    SizedBox(width: 5.w,),
                    const Text(
                      "شامل الضريبة",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    const Text(
                      "0.0",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 35.w,
            ),
            Container(
              width: 95.w,
              color: Colors.green[900],
              child: Column(
                children: [
                  SizedBox(height: 45.h,),
                  const Text(
                    "مصاريف",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 25.h,),
                  const Text(
                    "منذ 3 أيام",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
