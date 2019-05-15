import 'package:dio/dio.dart';
import 'package:erp_flutter/model/CompanyConfigResponce.dart';

class ApiProvider{
  final String _endpoint = "http://10.0.0.233:8023/Api/Authenticate/InitialConfig?COMPCODE=c9erpdev&DEVICEID=""&APPID=""";
  final Dio _dio = Dio();

  Future<CompanyConfigResponse> getUser() async {
    try {
      Response response = await _dio.get(_endpoint);
      return CompanyConfigResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return CompanyConfigResponse.withError("$error");
    }
  }
}