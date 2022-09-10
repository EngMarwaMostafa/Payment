import 'package:get/get.dart';

import '../services/payment_services.dart';
import 'BaseController.dart';

class PaymentController extends BaseController {

  final _services = PaymentServices();
  final selected = "فيزا".obs;

  void setSelected(String value){
    selected.value = value;
  }
}

