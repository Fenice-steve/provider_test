class ListDetailsModel {
  int resultCode;
  String resultMessage;
  List<ResultData> resultData;

  ListDetailsModel({this.resultCode, this.resultMessage, this.resultData});

  ListDetailsModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultMessage = json['resultMessage'];
    if (json['resultData'] != null) {
      resultData = new List<ResultData>();
      json['resultData'].forEach((v) {
        resultData.add(new ResultData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['resultCode'] = this.resultCode;
    data['resultMessage'] = this.resultMessage;
    if (this.resultData != null) {
      data['resultData'] = this.resultData.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ResultData {
  int hsRankID;
  String hsRankNameCn;
  String hsRankNameEn;
  String hsRankLogo;
  int hsRankType;
  String hsRankYear;
  String hsRankSummaryCn;
  String hsRankSummaryEn;
  String hsRankReleaseDate;
  int hsRankExchangeRate;
  String hsRankMTime;

  ResultData(
      {this.hsRankID,
        this.hsRankNameCn,
        this.hsRankNameEn,
        this.hsRankLogo,
        this.hsRankType,
        this.hsRankYear,
        this.hsRankSummaryCn,
        this.hsRankSummaryEn,
        this.hsRankReleaseDate,
        this.hsRankExchangeRate,
        this.hsRankMTime});

  ResultData.fromJson(Map<String, dynamic> json) {
    hsRankID = json['hs_Rank_ID'];
    hsRankNameCn = json['hs_Rank_Name_Cn'];
    hsRankNameEn = json['hs_Rank_Name_En'];
    hsRankLogo = json['hs_Rank_Logo'];
    hsRankType = json['hs_Rank_Type'];
    hsRankYear = json['hs_Rank_Year'];
    hsRankSummaryCn = json['hs_Rank_Summary_Cn'];
    hsRankSummaryEn = json['hs_Rank_Summary_En'];
    hsRankReleaseDate = json['hs_Rank_ReleaseDate'];
    hsRankExchangeRate = json['hs_Rank_ExchangeRate'];
    hsRankMTime = json['hs_Rank_MTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hs_Rank_ID'] = this.hsRankID;
    data['hs_Rank_Name_Cn'] = this.hsRankNameCn;
    data['hs_Rank_Name_En'] = this.hsRankNameEn;
    data['hs_Rank_Logo'] = this.hsRankLogo;
    data['hs_Rank_Type'] = this.hsRankType;
    data['hs_Rank_Year'] = this.hsRankYear;
    data['hs_Rank_Summary_Cn'] = this.hsRankSummaryCn;
    data['hs_Rank_Summary_En'] = this.hsRankSummaryEn;
    data['hs_Rank_ReleaseDate'] = this.hsRankReleaseDate;
    data['hs_Rank_ExchangeRate'] = this.hsRankExchangeRate;
    data['hs_Rank_MTime'] = this.hsRankMTime;
    return data;
  }
}
