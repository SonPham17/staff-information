import 'package:staff_information/features/login/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  LoginModel({
    String? firstName,
    String? id,
    String? birthDay,
    int? sex,
    String? address,
  }) : super(
          firstName: firstName,
          id: id,
          birthDay: birthDay,
          sex: sex,
          address: address,
        );

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      firstName: json['firstName'],
      id: json['id'],
      birthDay: json['birthDay'],
      sex: json['sex'],
      address: json['address'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'id': id,
      'birthDay': birthDay,
      'sex': sex,
      'address': address,
    };
  }
}
