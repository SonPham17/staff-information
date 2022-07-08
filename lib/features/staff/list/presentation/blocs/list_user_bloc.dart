import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/core/usecases/usecase.dart';
import 'package:staff_information/features/login/domain/usecases/press_login.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';
import 'package:staff_information/features/staff/list/domain/usecases/get_user.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/list_user_event.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/list_user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetListUser listUser;

  UserBloc({required this.listUser}) : super(UserInitial()) {
    on<GetListUserEvent>((event, emit) => _handleGetLogin(event, emit));
  }

  // handle get login
  _handleGetLogin(GetListUserEvent event, Emitter emit) async {
    emit(UserLoading());
    try {
      final loginModel = await listUser(NoParams());
      emit(GetUserSuccess(listUser: loginModel));
    } catch (e) {
      emit(GetUserError(message: "get user error"));
    }
  }
}
