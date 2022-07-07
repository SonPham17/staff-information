import 'package:staff_information/features/login/domain/entities/login_entity.dart';

abstract class LoginRepository{
  Future<LoginEntity> login(String userName, String password);
}