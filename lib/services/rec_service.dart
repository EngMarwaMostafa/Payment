import 'package:dio/dio.dart';
import 'package:payment/data/models/getRecList.dart';

class RecServices {
  final Dio _dio = Dio();

  final String baseUrl =
      'http://78.47.37.158:1201/VanSalesService/rec/GetrecData';

  fetchRect() async {
    Response response = await _dio.get(
      '$baseUrl/api/user_id=5fa9a1f9-629a-4c40-9826-fc27d7c1b131&searchval=',
    );
    if (response.statusCode == 200) {
      print(response.data);
      return GetListModel.fromJson(response.data);
    }
    throw 'exception';
  }
}