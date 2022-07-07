import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:staff_information/core/themes/common_style.dart';
class TextFieldCommon extends StatelessWidget {
  final String? label;
  final double? paddingIcon;
  final TextEditingController? controller;
  final bool? alignLabelWithHint;
  final int maxLines;
  final int? maxLength;
  final bool obscureText;
  final String? initial;
  final EdgeInsetsGeometry contentPadding;
  final String? hint;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Color? filledColor;
  final TextStyle? inputStyle;
  final TextStyle? hintStyle;
  final ValueChanged<String>? onChange;
  final double? maxHeight;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final value;
  final bool enabled;
  final prefixIconConstraints;
  final focusNode;
  final List<TextInputFormatter>? formatters;
  final FormFieldValidator<String>? validator;
  final bool autofocus;
  final TextInputType? keyBoardType;
  final String? keyString;
  final String? prefixText;
  final Color? focusedBorderColor;
  final TextInputAction? textInputAction;

   TextFieldCommon(
      {this.autofocus = true,
        this.label,
        this.paddingIcon,
        this.controller,
        this.initial,
        this.alignLabelWithHint,
        this.maxLines = 1,
        this.maxLength,
        this.prefixText,
        this.obscureText = false,
        this.inputStyle,
        this.hintStyle,
        this.onChange,
        this.contentPadding = const EdgeInsets.symmetric(horizontal: 14.0),
        this.hint,
        this.prefixIcon,
        this.suffixIcon,
        this.filledColor,
        this.maxHeight,
        this.floatingLabelBehavior,
        this.keyBoardType,
        this.value,
        this.enabled = true,
        this.focusNode,
        this.formatters,
        this.validator,
        this.prefixIconConstraints,
        this.keyString,
        this.textInputAction,
        this.focusedBorderColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      cursorColor: CommonStyle.greenColor ,
      key: Key(keyString ?? ""),
      autofocus: autofocus,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
      onChanged: onChange,
      initialValue: initial,
      maxLines: maxLines,
      maxLength: maxLength ,
      keyboardType: keyBoardType,
      enabled: enabled,
      focusNode: focusNode,
      inputFormatters: formatters,
      style: inputStyle ?? Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          prefixIconConstraints: prefixIconConstraints,
          counter: const Offstage(),
          alignLabelWithHint: true,
          hintText: hint ?? '',
          filled: true,
          errorMaxLines: 3,
          prefixText: prefixText != null ? '$prefixText ' : null,
          prefixStyle: inputStyle,
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: const Color(0xffACACAC)),
          contentPadding: contentPadding,
          labelText: label,
          floatingLabelBehavior:
          floatingLabelBehavior ?? FloatingLabelBehavior.auto,
          labelStyle: hintStyle ??
              TextStyle(
                  color: CommonStyle.greyColor,
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400),
          fillColor: filledColor ?? Colors.white,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: focusedBorderColor ?? CommonStyle.greyColor)),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: CommonStyle.greyColor,
              width: 1.0,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: CommonStyle.greyColor,
              width: 1.0,
            ),
          )),
    );
  }
}