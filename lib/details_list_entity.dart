import 'dart:convert' show json;

class DetailsListModel{
    int resultCode;
  String resultMessage;
  List<DetailsListModelLis> resultData;

    DetailsListModel.fromParams({this.resultCode, this.resultMessage, this.resultData});

    factory DetailsListModel(jsonStr) => jsonStr == null
        ? null
        : jsonStr is String
        ? new DetailsListModel.fromJson(json.decode(jsonStr))
        : new DetailsListModel.fromJson(jsonStr);

    DetailsListModel.fromJson(jsonRes){
      resultCode = jsonRes['resultCode'];
      resultMessage = jsonRes['resultMessage'];
      resultData = jsonRes['resultData'] == null ? null : [];

      for (var resultDataItem in resultData == null ? [] : jsonRes['resultData']){
        resultData.add(resultDataItem == null ? null : new DetailsListModelLis.fromJson(resultDataItem));
      }
    }

    String toString(){
      return '{"resultCode" ${resultCode != null ? '${json.encode(resultCode)}':'null'}, "resultMessage" : ${resultMessage != null ? '${json.encode(resultMessage)}' : 'null'}, "resultData": $resultData';
    }
}

class DetailsListModelLis{
  String hsRankSummaryCn;
  var hsRankId;
  String hsRankLogo;
  String hsRankYear;
  String hsRankSummaryEn;
  var hsRankExchangerate;
  var hsRankType;
  String hsRankNameCn;
  String hsRankNameEn;
  String hsRankReleasedate;
  String hsRankMtime;

  DetailsListModelLis.fromParams({this.hsRankSummaryCn, this.hsRankId, this.hsRankLogo,
      this.hsRankYear, this.hsRankSummaryEn, this.hsRankExchangerate,
      this.hsRankType, this.hsRankNameCn, this.hsRankNameEn,
      this.hsRankReleasedate, this.hsRankMtime});

  DetailsListModelLis.fromJson(jsonRes){
    hsRankSummaryCn = jsonRes['hs_Rank_Summary_Cn'];
    hsRankId = jsonRes['hs_Rank_ID'];
    hsRankLogo = jsonRes['hs_Rank_Logo'];
    hsRankYear = jsonRes['hs_Rank_Year'];
    hsRankSummaryEn = jsonRes['hs_Rank_Summary_En'];
    hsRankExchangerate = jsonRes['hs_Rank_ExchangeRate'];
    hsRankType = jsonRes['hs_Rank_Type'];
    hsRankNameCn = jsonRes['hs_Rank_Name_Cn'];
    hsRankNameEn = jsonRes['hs_Rank_Name_En'];
    hsRankReleasedate = jsonRes['hs_Rank_ReleaseDate'];
    hsRankMtime = jsonRes['hs_Rank_MTime'];
  }

  @override
  String toString(){
    return '';
  }
}



//class DetailsListModel {
//  int resultCode;
//  String resultMessage;
//  List<dynamic> resultData;
//
//  DetailsListModel({this.resultCode, this.resultMessage, this.resultData});
//
//  factory DetailsListModel.fromJson(dynamic json){
//    return DetailsListModel(
//        resultCode:json['resultCode'],
//      resultMessage: json['resultMessage'],
//      resultData: json['resultData']
//    );
//  }
//}
//
//class DetailsListModelLis{
//  List<DetailsListModel> data;
//  DetailsListModelLis(this.data);
//  factory DetailsListModelLis.fromJson(List json){
//    return DetailsListModelLis(
//      json.map((i)=>DetailsListModel.fromJson((i))).toList()
//    );
//  }
//}
