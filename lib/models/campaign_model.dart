class CampaignModel {
  List<CampaignData>? value;

  CampaignModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = <CampaignData>[];
      json['value'].forEach((v) {
        value!.add(CampaignData.fromJson(v));
      });
    }
  }

}

class CampaignData {
  String? odataEtag;
  int? statecode;
  String? blserPrelaunchactivitiesstart;
  int? blserCampaigntype;
  String? blsercampaigntypeFormattedValue;
  int? statuscode;
  bool? blserAllowwishlistsbeforepreactivitiesdate;
  String? blserLaunchdate;
  String? createdon;
  String? blserLaunchcampaignid;
  bool? blserLaunchautomatically;
  String? sOwneridValue;
  int? blserUnitscount;
  String? modifiedon;
  String? blserTopic;
  int? versionnumber;
  String? sTransactioncurrencyidValue;
  double? exchangerate;
  int? timezoneruleversionnumber;
  String? sModifiedbyValue;
  double? blserEoifeeBase;
  String? blserUnitscountDate;
  String? sCreatedbyValue;
  String? sOwningbusinessunitValue;
  String? sOwninguserValue;
  double? blserEoifee;
  int? blserUnitscountState;
  String? nBlserRelatedprojectValue;
  String? overriddencreatedon;
  int? importsequencenumber;
  String? nModifiedonbehalfbyValue;
  int? blserCampaignstatus;
  String? blserCampaignstatusFormattedValue;
  String? utcconversiontimezonecode;
  String? nCreatedonbehalfbyValue;
  String? nOwningteamValue;

  CampaignData.fromJson(Map<String, dynamic> json) {
    odataEtag = json['@odata.etag'];
    statecode = json['statecode'];
    blserPrelaunchactivitiesstart = json['blser_prelaunchactivitiesstart'];
    blserCampaigntype = json['blser_campaigntype'];
    blsercampaigntypeFormattedValue = json['blser_campaigntype@OData.Community.Display.V1.FormattedValue'];
    statuscode = json['statuscode'];
    blserAllowwishlistsbeforepreactivitiesdate =
        json['blser_allowwishlistsbeforepreactivitiesdate'];
    blserLaunchdate = json['blser_launchdate'];
    createdon = json['createdon'];
    blserLaunchcampaignid = json['blser_launchcampaignid'];
    blserLaunchautomatically = json['blser_launchautomatically'];
    sOwneridValue = json['_ownerid_value'];
    blserUnitscount = json['blser_unitscount'];
    modifiedon = json['modifiedon'];
    blserTopic = json['blser_topic'];
    versionnumber = json['versionnumber'];
    sTransactioncurrencyidValue = json['_transactioncurrencyid_value'];
    exchangerate = json['exchangerate'];
    timezoneruleversionnumber = json['timezoneruleversionnumber'];
    sModifiedbyValue = json['_modifiedby_value'];
    blserEoifeeBase = json['blser_eoifee_base'];
    blserUnitscountDate = json['blser_unitscount_date'];
    sCreatedbyValue = json['_createdby_value'];
    sOwningbusinessunitValue = json['_owningbusinessunit_value'];
    sOwninguserValue = json['_owninguser_value'];
    blserEoifee = json['blser_eoifee'];
    blserUnitscountState = json['blser_unitscount_state'];
    nBlserRelatedprojectValue = json['_blser_relatedproject_value'];
    overriddencreatedon = json['overriddencreatedon'];
    importsequencenumber = json['importsequencenumber'];
    nModifiedonbehalfbyValue = json['_modifiedonbehalfby_value'];
    blserCampaignstatus = json['blser_campaignstatus'];
    blserCampaignstatusFormattedValue = json['blser_campaignstatus@OData.Community.Display.V1.FormattedValue'];
    utcconversiontimezonecode = json['utcconversiontimezonecode'];
    nCreatedonbehalfbyValue = json['_createdonbehalfby_value'];
    nOwningteamValue = json['_owningteam_value'];
  }
}