import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_information/core/themes/common_style.dart';
import 'package:staff_information/features/login/presentation/blocs/login_bloc.dart';
import 'package:staff_information/features/login/presentation/blocs/login_event.dart';
import 'package:staff_information/features/login/presentation/blocs/login_state.dart';
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
   return  BlocConsumer<LoginBloc, LoginState>(
      builder: (context, state) => _buildUI(context),
      listener: (context , state) {
        if(state is LoginLoading) {
          _onLoading(true);
        } else if( state is LoginSuccess) {
          _onLoading(false);
        } else if (state is LoginError) {
          _onLoading(false);
        }
      },
    );
  }

  _buildUI(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldCommon(
              hint: "Input user name",
              controller: _userController,
              prefixIcon: const Icon(Icons.person, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextFieldCommon(
                  hint: "Input password",
                  controller: _passwordController,
                  prefixIcon: const Icon(Icons.key),
                  obscureText: true),
            ),
            LoginButton(
                textStyle: CommonStyle.size14w400(context),
                text: "Login",
                fillColor: CommonStyle.greenColor,
                func: () {
                  context.read<LoginBloc>().add(LoginPressEvent(
                      _userController.text, _passwordController.text));
                })
          ],
        ),
      ),
    );
  }
  void _onLoading(bool isloading) {
    isloading == true ?  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child:  Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator(),
               Text("Loading"),
            ],
          ),
        );
      },
    ) : null;
  }
}
