abstract class LoginEvent{}
class LoginPressEvent extends LoginEvent {
  final String userName;
  final String password;

  LoginPressEvent(this.userName, this.password);

}