import 'package:staff_information/features/login/domain/entities/login_entity.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    String? manv,
    String? userLogin,
    String? email,
    int? phoneNumber,
    String? birthday,
    String? sex,
    String? address,
    String? cmnd,
    String? noicap,
    String? note,
  }) : super(
    manv: manv,
    userLogin: userLogin,
    email: email,
    phoneNumber: phoneNumber,
    birthday: birthday,
    sex: sex,
    address: address,
    cmnd: cmnd,
    noicap: noicap,
    note: note,
        );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      manv: json['manv'],
      userLogin: json['userLogin'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      birthday: json['birthday'],
      sex: json['sex'],
      address: json['address'],
      cmnd: json['cmnd'],
      noicap: json['noicap'],
      note: json['note'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'manv': manv,
      'userLogin': userLogin,
      'email': email,
      'phoneNumber': phoneNumber,
      'birthday': birthday,
      'sex': sex,
      'address': address,
      'cmnd': cmnd,
      'noicap': noicap,
      'note': note,
    };
  }
}
