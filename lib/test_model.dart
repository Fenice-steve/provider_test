class TestModel {
  int resultCode;
  String resultMessage;
  List<ResultData> resultData;

  TestModel({this.resultCode, this.resultMessage, this.resultData});

  TestModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['result_Code'];
    resultMessage = json['result_Message'];
    if (json['result_Data'] != null) {
      resultData = new List<ResultData>();
      json['result_Data'].forEach((v) {
        resultData.add(new ResultData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result_Code'] = this.resultCode;
    data['result_Message'] = this.resultMessage;
    if (this.resultData != null) {
      data['result_Data'] = this.resultData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultData {
  int did;
  Da da;

  ResultData({this.did, this.da});

  ResultData.fromJson(Map<String, dynamic> json) {
    did = json['did'];
    da = json['da'] != null ? new Da.fromJson(json['da']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['did'] = this.did;
    if (this.da != null) {
      data['da'] = this.da.toJson();
    }
    return data;
  }
}

class Da {
  int tid;
  String ta;

  Da({this.tid, this.ta});

  Da.fromJson(Map<String, dynamic> json) {
    tid = json['tid'];
    ta = json['ta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tid'] = this.tid;
    data['ta'] = this.ta;
    return data;
  }
}
