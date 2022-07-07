import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/features/login/domain/usecases/press_login.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final PressLogin pressLogin;

  LoginBloc({required this.pressLogin}) : super(LoginInitial()) {
    on<LoginPressEvent>((event, emit) => _handleGetLogin(event, emit));
  }

  // handle get login
  _handleGetLogin(LoginPressEvent event, Emitter emit) async {
    emit(LoginLoading());
    try {
      if (event.userName.isNotEmpty && event.password.isNotEmpty) {
        final loginModel = await pressLogin(Params(userName: event.userName, password: event.password));
        print(loginModel.firstName);
        emit(LoginSuccess());
      } else {
        emit(LoginError(message: "Please fill all field"));
      }
    } catch (e) {}
  }
}
