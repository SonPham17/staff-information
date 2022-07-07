import 'package:staff_information/features/login/data/model/login_model.dart';

abstract class LoginRemoteDataSource {
  Future<LoginModel> login(String userName, String password);
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  @override
  Future<LoginModel> login(String userName, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    return LoginModel.fromJson(jsonLogin);
  }
}

final jsonLogin = {
  "firstName": "Tran Quoc Khanh",
  "id": "123456",
  "birthDay": "08/07/1998",
  "sex": 1,
  "address": 'Vành đai 3',
};
