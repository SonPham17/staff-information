import 'package:flutter/material.dart';

class CommonStyle{
  static Color greyColor = const Color(0xffACACAC);
  static Color greenColor = const Color(0xff5EA8A9);
  static TextStyle size14w400(BuildContext context) {
    return const TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 16);
  }
  static TextStyle size14w400Black(BuildContext context) {
    return const TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16);
  }

}