import 'package:flutter/material.dart';
import 'package:staff_information/core/themes/common_style.dart';
import 'package:staff_information/features/login/presentation/widgets/login_button.dart';
import 'package:staff_information/features/login/presentation/widgets/login_textfield.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldCommon(hint: "Input user name",prefixIcon: const Icon(Icons.person,color: Colors.grey),),
            TextFieldCommon(hint: "Input password",prefixIcon: const Icon(Icons.key),obscureText: true),
            LoginButton(textStyle: CommonStyle.size14w400(context), text: "Login", fillColor: CommonStyle.greenColor, func: () {})
          ],
        ),
      ),
    );
  }
}
