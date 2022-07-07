import 'package:flutter/material.dart';
class LoginButton extends StatelessWidget {
  final Widget? icon;
  final Color? iconStyle;
  final double? drawablePadding;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final double? contentWidth;
  final TextStyle? textStyle;
  final String? text;
  final Color? fillColor;
  final Function func;
  final double? cornerRadius;
  final Key? keyValue;
  final bool? isDisable;

   LoginButton(
      {this.icon,
        this.iconStyle,
        this.drawablePadding,
        this.height,
        this.width,
        this.padding,
        this.contentWidth,
        required this.textStyle,
        required this.text,
        required this.fillColor,
        required this.func,
        this.cornerRadius,
        this.isDisable,
        this.keyValue});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: keyValue,
      style: TextButton.styleFrom(
        splashFactory: isDisable != null && !isDisable!
            ? NoSplash.splashFactory
            : null,
        minimumSize: Size(width ?? 85, height ?? 46.0),
        backgroundColor: fillColor,
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(cornerRadius ?? 8.0))),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 10),
      ),
      onPressed: () {
        func();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: icon,
          ),
          SizedBox(
            width: drawablePadding ?? 8.0,
          ),
          Flexible(
            child: Text(
              text!,
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
