import 'package:staff_information/core/usecases/usecase.dart';
import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';
import 'package:staff_information/features/staff/list/domain/repository/list_user_repository.dart';

class PressLogin implements UseCase<List<UserEntity>, NoParams> {
  final UserRepository repository;

  PressLogin(this.repository);

  @override
  Future<List<UserEntity>> call(NoParams params) async {
    return repository.getListUser();
  }
}

