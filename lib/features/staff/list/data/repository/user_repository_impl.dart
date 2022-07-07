import 'package:staff_information/features/staff/list/data/datasources/list_data_source.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';
import 'package:staff_information/features/staff/list/domain/repository/list_user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserListDataSource userDataSource;

  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<List<UserEntity>> getListUser() async {
    return userDataSource.getListUser();
  }
}
