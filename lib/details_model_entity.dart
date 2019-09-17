class DetailsModelEntity {
	List<DetailsModelResultdata> resultData;
	int resultCode;
	String resultMessage;

	DetailsModelEntity({this.resultData, this.resultCode, this.resultMessage});

	DetailsModelEntity.fromJson(Map<String, dynamic> json) {
		if (json['resultData'] != null) {
			resultData = new List<DetailsModelResultdata>();(json['resultData'] as List).forEach((v) { resultData.add(new DetailsModelResultdata.fromJson(v)); });
		}
		resultCode = json['resultCode'];
		resultMessage = json['resultMessage'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.resultData != null) {
      data['resultData'] =  this.resultData.map((v) => v.toJson()).toList();
    }
		data['resultCode'] = this.resultCode;
		data['resultMessage'] = this.resultMessage;
		return data;
	}
}

class DetailsModelResultdata {
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

	DetailsModelResultdata({this.hsRankSummaryCn, this.hsRankId, this.hsRankLogo, this.hsRankYear, this.hsRankSummaryEn, this.hsRankExchangerate, this.hsRankType, this.hsRankNameCn, this.hsRankNameEn, this.hsRankReleasedate, this.hsRankMtime});

	DetailsModelResultdata.fromJson(Map<String, dynamic> json) {
		hsRankSummaryCn = json['hs_Rank_Summary_Cn'];
		hsRankId = json['hs_Rank_ID'];
		hsRankLogo = json['hs_Rank_Logo'];
		hsRankYear = json['hs_Rank_Year'];
		hsRankSummaryEn = json['hs_Rank_Summary_En'];
		hsRankExchangerate = json['hs_Rank_ExchangeRate'];
		hsRankType = json['hs_Rank_Type'];
		hsRankNameCn = json['hs_Rank_Name_Cn'];
		hsRankNameEn = json['hs_Rank_Name_En'];
		hsRankReleasedate = json['hs_Rank_ReleaseDate'];
		hsRankMtime = json['hs_Rank_MTime'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['hs_Rank_Summary_Cn'] = this.hsRankSummaryCn;
		data['hs_Rank_ID'] = this.hsRankId;
		data['hs_Rank_Logo'] = this.hsRankLogo;
		data['hs_Rank_Year'] = this.hsRankYear;
		data['hs_Rank_Summary_En'] = this.hsRankSummaryEn;
		data['hs_Rank_ExchangeRate'] = this.hsRankExchangerate;
		data['hs_Rank_Type'] = this.hsRankType;
		data['hs_Rank_Name_Cn'] = this.hsRankNameCn;
		data['hs_Rank_Name_En'] = this.hsRankNameEn;
		data['hs_Rank_ReleaseDate'] = this.hsRankReleasedate;
		data['hs_Rank_MTime'] = this.hsRankMtime;
		return data;
	}
}
