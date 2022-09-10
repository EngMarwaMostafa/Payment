import 'package:dio/dio.dart';

import '../data/models/getPaymentTypeList.dart';
import '../data/models/getRecList.dart';

class PaymentServices {
  final Dio _dio = Dio();

  final String baseUrl =
      'http://78.47.37.158:1201/VanSalesService/payment/paytype';

  setSelected() async {
    Response response = await _dio.get(
      '$baseUrl/api/model=2',
    );
    if (response.statusCode == 200) {
      print(response.data);
      return GetPaymentTypeList.fromJson(response.data);
    }
    throw 'exception';
  }
}