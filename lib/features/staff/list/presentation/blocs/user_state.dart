import 'package:staff_information/features/staff/list/domain/entities/list_user_entity.dart';

abstract class UserState {}

class UserLoading extends UserState {}

class UserInitial extends UserState {}

class GetUserSuccess extends UserState {
 final List<UserEntity> listUser;
 GetUserSuccess({required this.listUser});

  @override
  List<Object?> get props => [listUser];
}

class GetUserError extends UserState {
  String message;

  GetUserError({required this.message});

  @override
  List<Object?> get props => [message];
}
