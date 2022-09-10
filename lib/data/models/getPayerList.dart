/// Data : "[{\"paytypeid\":1,\"paytname\":\"نقدى\",\"paytename\":\"cash\",\"value\":0.0,\"paychartid\":143},{\"paytypeid\":2,\"paytname\":\"شبكه\",\"paytename\":\"Network\",\"value\":0.0,\"paychartid\":null},{\"paytypeid\":3,\"paytname\":\"فيزا\",\"paytename\":\"Visa\",\"value\":0.0,\"paychartid\":146},{\"paytypeid\":4,\"paytname\":\"تحويل بنكى\",\"paytename\":\"Bank transfer\",\"value\":0.0,\"paychartid\":null},{\"paytypeid\":5,\"paytname\":\"شيك\",\"paytename\":\"Check\",\"value\":0.0,\"paychartid\":null},{\"paytypeid\":9,\"paytname\":\"دفعات مقدمه\",\"paytename\":\"advance payments\",\"value\":0.0,\"paychartid\":null}]"

class GetPayerList {
  GetPayerList({
      String? data,}){
    _data = data;
}

  GetPayerList.fromJson(dynamic json) {
    _data = json['Data'];
  }
  String? _data;

  String? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Data'] = _data;
    return map;
  }

}