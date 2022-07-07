import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:staff_information/core/usecases/usecase.dart';
import 'package:staff_information/features/login/domain/entities/login_entity.dart';
import 'package:staff_information/features/login/domain/repository/login_repository.dart';

class PressLogin implements UseCase<LoginEntity, Params> {
  final LoginRepository repository;

  PressLogin(this.repository);

  @override
  Future<LoginEntity> call(Params params) async {
    return await repository.login(params.userName ?? '', params.password ?? '');
  }
}

class Params extends Equatable {
  final String? userName;
  final String? password;

  const Params({@required this.userName, @required this.password});

  @override
  List<dynamic> get props => [userName, password];
}
