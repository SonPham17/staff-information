abstract class LoginState {}

class LoginLoading extends LoginState {}

class LoginInitial extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  String message;

   LoginError({required this.message});

  @override
  List<Object?> get props => [message];
}
