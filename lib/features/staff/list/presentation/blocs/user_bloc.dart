import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/features/login/domain/usecases/press_login.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/user_event.dart';
import 'package:staff_information/features/staff/list/presentation/blocs/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final PressLogin pressLogin;

  UserBloc({required this.pressLogin}) : super(UserInitial()) {
    on<GetListUserEvent>((event, emit) => _handleGetLogin(event, emit));
  }

  // handle get login
  _handleGetLogin(GetListUserEvent event, Emitter emit) async {
    emit(LoginLoading());
    try {
      final loginModel = await pressLogin(Params(userName: event.userName, password: event.password));
    } catch (e) {}
  }
}
