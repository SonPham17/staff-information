import 'package:staff_information/features/login/data/model/login_model.dart';
import 'package:staff_information/features/staff/list/data/model/user_model.dart';

abstract class UserListDataSource {
  Future<List<UserModel>> getListUser();
}

class UserListDataSourceImpl implements UserListDataSource {
  @override
  Future<List<UserModel>> getListUser() async {
    await Future.delayed(const Duration(seconds: 2));
    return jsonData.map((e) => UserModel.fromJson(e)).toList();
  }
}

final jsonData = [{
  "manv": "DTC12452und",
  "userLogin": "KhanhTQ",
  "email": "tranquockhanh@gmail.com",
  "phoneNumber": "0213547856",
  "birthday": "08/08/1998",
  "sex": 1,
  "address": "vanh dai 3",
  "cmnd": "032541546",
  "noicap": "LC",
  "note": "i love you baby",
},{
  "manv": "DTC14051234",
  "userLogin": "SonPham",
  "email": "phamtrungson@gmail.com",
  "phoneNumber": "0231452104",
  "birthday": "08/08/1998",
  "sex": 1,
  "address": "vanh dai 5",
  "cmnd": "01234567",
  "noicap": "PT",
  "note": "nothing show",
}];
