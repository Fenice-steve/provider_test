class ListModel {
  int resultCode;
  String resultMessage;
  List<ListData> resultData;

  ListModel({this.resultCode, this.resultMessage, this.resultData});

  ListModel.fromJson(Map<String, dynamic> json) {
    resultCode = json['resultCode'];
    resultMessage = json['resultMessage'];
    if (json['resultData'] != null) {
      resultData = new List<ListData>();
      json['resultData'].forEach((v) {
        resultData.add(new ListData.fromJson(v));
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

class ListData {
  var hsRankRichID;
  var hsRankRichListID;
  Null hsRankRichYear;
  Null hsRankRichType;
  String hsRankRichChaCn;
  String hsRankRichChaEn;
  List<HsRankRichChaList> hsRankRichChaList;
  String hsRankRichRelations;
  String hsRankRichComCn;
  String hsRankRichComEn;
  List<HsRankRichComList> hsRankRichComList;
  var hsRankRichRanking;
  var hsRankRichWealth;
  String hsRankRichMTime;

  ListData(
      {this.hsRankRichID,
        this.hsRankRichListID,
        this.hsRankRichYear,
        this.hsRankRichType,
        this.hsRankRichChaCn,
        this.hsRankRichChaEn,
        this.hsRankRichChaList,
        this.hsRankRichRelations,
        this.hsRankRichComCn,
        this.hsRankRichComEn,
        this.hsRankRichComList,
        this.hsRankRichRanking,
        this.hsRankRichWealth,
        this.hsRankRichMTime});

  ListData.fromJson(Map<String, dynamic> json) {
    hsRankRichID = json['hs_Rank_Rich_ID'];
    hsRankRichListID = json['hs_Rank_Rich_ListID'];
    hsRankRichYear = json['hs_Rank_Rich_Year'];
    hsRankRichType = json['hs_Rank_Rich_Type'];
    hsRankRichChaCn = json['hs_Rank_Rich_Cha_Cn'];
    hsRankRichChaEn = json['hs_Rank_Rich_Cha_En'];
    if (json['hs_Rank_Rich_Cha_List'] != null) {
      hsRankRichChaList = new List<HsRankRichChaList>();
      json['hs_Rank_Rich_Cha_List'].forEach((v) {
        hsRankRichChaList.add(new HsRankRichChaList.fromJson(v));
      });
    }
    hsRankRichRelations = json['hs_Rank_Rich_Relations'];
    hsRankRichComCn = json['hs_Rank_Rich_Com_Cn'];
    hsRankRichComEn = json['hs_Rank_Rich_Com_En'];
    if (json['hs_Rank_Rich_Com_List'] != null) {
      hsRankRichComList = new List<HsRankRichComList>();
      json['hs_Rank_Rich_Com_List'].forEach((v) {
        hsRankRichComList.add(new HsRankRichComList.fromJson(v));
      });
    }
    hsRankRichRanking = json['hs_Rank_Rich_Ranking'];
    hsRankRichWealth = json['hs_Rank_Rich_Wealth'];
    hsRankRichMTime = json['hs_Rank_Rich_MTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hs_Rank_Rich_ID'] = this.hsRankRichID;
    data['hs_Rank_Rich_ListID'] = this.hsRankRichListID;
    data['hs_Rank_Rich_Year'] = this.hsRankRichYear;
    data['hs_Rank_Rich_Type'] = this.hsRankRichType;
    data['hs_Rank_Rich_Cha_Cn'] = this.hsRankRichChaCn;
    data['hs_Rank_Rich_Cha_En'] = this.hsRankRichChaEn;
    if (this.hsRankRichChaList != null) {
      data['hs_Rank_Rich_Cha_List'] =
          this.hsRankRichChaList.map((v) => v.toJson()).toList();
    }
    data['hs_Rank_Rich_Relations'] = this.hsRankRichRelations;
    data['hs_Rank_Rich_Com_Cn'] = this.hsRankRichComCn;
    data['hs_Rank_Rich_Com_En'] = this.hsRankRichComEn;
    if (this.hsRankRichComList != null) {
      data['hs_Rank_Rich_Com_List'] =
          this.hsRankRichComList.map((v) => v.toJson()).toList();
    }
    data['hs_Rank_Rich_Ranking'] = this.hsRankRichRanking;
    data['hs_Rank_Rich_Wealth'] = this.hsRankRichWealth;
    data['hs_Rank_Rich_MTime'] = this.hsRankRichMTime;
    return data;
  }
}

class HsRankRichChaList {
  var hsCharacterID;
  String hsCharacterNameCn;
  String hsCharacterNameEn;
  String hsCharacterPhoto;
  String hsCharacterNationality;
  var hsCharacterGender;
  String hsCharacterBirthday;
  String hsCharacterBirthPlace;
  String hsCharacterPermanent;
  String hsCharacterEducation;
  String hsCharacterSchool;
  String hsCharacterMTime;

  HsRankRichChaList(
      {this.hsCharacterID,
        this.hsCharacterNameCn,
        this.hsCharacterNameEn,
        this.hsCharacterPhoto,
        this.hsCharacterNationality,
        this.hsCharacterGender,
        this.hsCharacterBirthday,
        this.hsCharacterBirthPlace,
        this.hsCharacterPermanent,
        this.hsCharacterEducation,
        this.hsCharacterSchool,
        this.hsCharacterMTime});

  HsRankRichChaList.fromJson(Map<String, dynamic> json) {
    hsCharacterID = json['hs_Character_ID'];
    hsCharacterNameCn = json['hs_Character_Name_Cn'];
    hsCharacterNameEn = json['hs_Character_Name_En'];
    hsCharacterPhoto = json['hs_Character_Photo'];
    hsCharacterNationality = json['hs_Character_Nationality'];
    hsCharacterGender = json['hs_Character_Gender'];
    hsCharacterBirthday = json['hs_Character_Birthday'];
    hsCharacterBirthPlace = json['hs_Character_BirthPlace'];
    hsCharacterPermanent = json['hs_Character_Permanent'];
    hsCharacterEducation = json['hs_Character_Education'];
    hsCharacterSchool = json['hs_Character_School'];
    hsCharacterMTime = json['hs_Character_MTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hs_Character_ID'] = this.hsCharacterID;
    data['hs_Character_Name_Cn'] = this.hsCharacterNameCn;
    data['hs_Character_Name_En'] = this.hsCharacterNameEn;
    data['hs_Character_Photo'] = this.hsCharacterPhoto;
    data['hs_Character_Nationality'] = this.hsCharacterNationality;
    data['hs_Character_Gender'] = this.hsCharacterGender;
    data['hs_Character_Birthday'] = this.hsCharacterBirthday;
    data['hs_Character_BirthPlace'] = this.hsCharacterBirthPlace;
    data['hs_Character_Permanent'] = this.hsCharacterPermanent;
    data['hs_Character_Education'] = this.hsCharacterEducation;
    data['hs_Character_School'] = this.hsCharacterSchool;
    data['hs_Character_MTime'] = this.hsCharacterMTime;
    return data;
  }
}

class HsRankRichComList {
  var hsCompanyID;
  String hsCompanyNameCn;
  String hsCompanyNameEn;
  String hsCompanyLogo;
  String hsCompanyHeadOffice;
  String hsCompanyDateFounded;
  var hsCompanyBeListed;
  var hsCompanyStockMarket;
  String hsCompanyStockCode;
  String hsCompanyIndustry;
  String hsCompanyMTime;
  Null hsStockMarket;

  HsRankRichComList(
      {this.hsCompanyID,
        this.hsCompanyNameCn,
        this.hsCompanyNameEn,
        this.hsCompanyLogo,
        this.hsCompanyHeadOffice,
        this.hsCompanyDateFounded,
        this.hsCompanyBeListed,
        this.hsCompanyStockMarket,
        this.hsCompanyStockCode,
        this.hsCompanyIndustry,
        this.hsCompanyMTime,
        this.hsStockMarket});

  HsRankRichComList.fromJson(Map<String, dynamic> json) {
    hsCompanyID = json['hs_Company_ID'];
    hsCompanyNameCn = json['hs_Company_Name_Cn'];
    hsCompanyNameEn = json['hs_Company_Name_En'];
    hsCompanyLogo = json['hs_Company_Logo'];
    hsCompanyHeadOffice = json['hs_Company_HeadOffice'];
    hsCompanyDateFounded = json['hs_Company_DateFounded'];
    hsCompanyBeListed = json['hs_Company_BeListed'];
    hsCompanyStockMarket = json['hs_Company_StockMarket'];
    hsCompanyStockCode = json['hs_Company_StockCode'];
    hsCompanyIndustry = json['hs_Company_Industry'];
    hsCompanyMTime = json['hs_Company_MTime'];
    hsStockMarket = json['hsStockMarket'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hs_Company_ID'] = this.hsCompanyID;
    data['hs_Company_Name_Cn'] = this.hsCompanyNameCn;
    data['hs_Company_Name_En'] = this.hsCompanyNameEn;
    data['hs_Company_Logo'] = this.hsCompanyLogo;
    data['hs_Company_HeadOffice'] = this.hsCompanyHeadOffice;
    data['hs_Company_DateFounded'] = this.hsCompanyDateFounded;
    data['hs_Company_BeListed'] = this.hsCompanyBeListed;
    data['hs_Company_StockMarket'] = this.hsCompanyStockMarket;
    data['hs_Company_StockCode'] = this.hsCompanyStockCode;
    data['hs_Company_Industry'] = this.hsCompanyIndustry;
    data['hs_Company_MTime'] = this.hsCompanyMTime;
    data['hsStockMarket'] = this.hsStockMarket;
    return data;
  }
}
