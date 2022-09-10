import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../data/models/getRecList.dart';
import '../services/rec_service.dart';
import 'BaseController.dart';

class RecController extends BaseController {

  var paymentList = <GetListModel>[].obs;

  final _services = RecServices();

  TextEditingController textEditingControllerNo = TextEditingController();
  TextEditingController textEditingControllerDate = TextEditingController();
  TextEditingController textEditingControllerTime = TextEditingController();

  final nomber = ''.obs;
  final date = ''.obs;
  final time = ''.obs;

  @override
  void onInit() {
    List? storedSearch = GetStorage().read<List>('paymentList');

  /*  if (storedSearch != null) {
      paymentList.assignAll(storedSearch.!map((e) =>
          GetListModel().fromJson(e)).toList());
    }*/
    ever(paymentList, (_) {
      GetStorage().write('paymentList', paymentList.toList());
    });
    super.onInit();
  }
}

