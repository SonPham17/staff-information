import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/core/themes/common_style.dart';
import 'package:staff_information/features/login/presentation/blocs/login_bloc.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/widgets/login_button.dart';
import 'package:staff_information/features/login/presentation/widgets/login_textfield.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldCommon(hint: "Input user name",prefixIcon: const Icon(Icons.person,color: Colors.grey),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextFieldCommon(hint: "Input password",prefixIcon: const Icon(Icons.key),obscureText: true),
            ),
            LoginButton(textStyle: CommonStyle.size14w400(context), text: "Login", fillColor: CommonStyle.greenColor, func: () {
          context.read<LoginBloc>().add(LoginPressEvent(_userController.text, _passwordController.text));
            })
          ],
        ),
      ),
    );
  }
}

