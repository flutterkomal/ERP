
import 'package:erp_flutter/model/CompanyConfigResponce.dart';
import 'package:erp_flutter/repository/CompanyRepository.dart';
import 'package:rxdart/subjects.dart';


class CompanyBloc {
  final CompanyRepository _repository = CompanyRepository();
  final BehaviorSubject<CompanyConfigResponse> _subject =
  BehaviorSubject<CompanyConfigResponse>();

  getUser() async {
    CompanyConfigResponse response = await _repository.getUser();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<CompanyConfigResponse> get subject => _subject;

}
final bloc = CompanyBloc();