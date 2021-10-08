import 'package:flutter/material.dart';
import 'package:upwork_client/constants/colors.dart';
import 'package:upwork_client/constants/text_style.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.controller,
      this.keyboardType,
      required this.obscureText,
      this.hintText,
      this.suffixIcon,
      this.hintStyle})
      : super(key: key);
  String? hintText;
  String? labelText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;
  final suffixIcon;
  final hintStyle;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            suffixIcon: suffixIcon,
            //labelStyle: GoogleFonts.lato(fontSize: 14, color: greenColor),
            hintStyle: hintStyle,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.pinkColor),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.pinkColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ))));
  }
}
