import 'package:erp_flutter/model/CompanyConfigResponce.dart';
import 'package:erp_flutter/services/ApiProvider.dart';

class CompanyRepository{
 ApiProvider _apiProvider = ApiProvider();

  Future<CompanyConfigResponse> getUser(){
    return _apiProvider.getUser();
  }
}