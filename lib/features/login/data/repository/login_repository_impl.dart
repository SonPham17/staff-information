import 'package:staff_information/features/login/data/datasources/login_remote_data_source.dart';
import 'package:staff_information/features/login/domain/entities/login_entity.dart';
import 'package:staff_information/features/login/domain/repository/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;

  LoginRepositoryImpl({required this.loginRemoteDataSource});

  @override
  Future<LoginEntity> login(String userName, String password) async {
    return loginRemoteDataSource.login(userName, password);
  }
}
