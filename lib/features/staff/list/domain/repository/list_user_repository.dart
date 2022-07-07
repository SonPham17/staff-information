

import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

abstract class UserRepository{
  Future<List<UserEntity>> getListUser();
}