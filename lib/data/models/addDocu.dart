/// success : true
/// recid : 43
/// recno : "10018"

class AddDocu {
  AddDocu({
      bool? success, 
      int? recid, 
      String? recno,}){
    _success = success;
    _recid = recid;
    _recno = recno;
}

  AddDocu.fromJson(dynamic json) {
    _success = json['success'];
    _recid = json['recid'];
    _recno = json['recno'];
  }
  bool? _success;
  int? _recid;
  String? _recno;

  bool? get success => _success;
  int? get recid => _recid;
  String? get recno => _recno;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['recid'] = _recid;
    map['recno'] = _recno;
    return map;
  }

}