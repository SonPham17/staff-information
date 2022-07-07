import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()){
   on<LoginPressEvent> ((event, emit) => _handleGetLogin(event, emit));
  }


  _handleGetLogin(LoginPressEvent event , Emitter emit) async {
    emit( LoginLoading());
    try {
        if(event.userName.isNotEmpty && event.password.isNotEmpty) {
          emit(LoginSuccess()) ;
        } else {
          emit(LoginError(message: "Please fill all field"));
        }
    } catch (e) {

    }
  }
}
// handle get login
