
class CompanyName {
  final int cOMPID;
  final String cOMPANYNAME;
  final String lOGOURL;
  final String aPIURL;
  final String cOMPANYFULLNAME;
  final String bIREPORTURL;

  //CompanyName(this.cOMPID, this.cOMPANYNAME, this.lOGOURL,this.aPIURL,this.cOMPANYFULLNAME,this.bIREPORTURL);

  CompanyName.fromJson(Map<String, dynamic> json)
      : cOMPID = json["COMPID"],
        cOMPANYNAME = json["COMPANYNAME"],
        lOGOURL = json["LOGOURL"],
        aPIURL=json["APIURL"],
        cOMPANYFULLNAME=json["COMPANYFULLNAME"],
        bIREPORTURL=json["BIREPORTURL"];
}
class CompanyConfigResponse {
  final List<CompanyName> results;
  final String error;

  CompanyConfigResponse(this.results, this.error);

  CompanyConfigResponse.fromJson(Map<String, dynamic> json)
      : results =
  (json["RESULT"] as List).map((i) => new CompanyName.fromJson(i)).toList(),
        error = "";

  CompanyConfigResponse.withError(String errorValue)
      : results = List(),
        error = errorValue;
}