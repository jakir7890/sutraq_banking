import 'package:flutter/material.dart';
import 'package:squrart_app/const/constants.dart';

class MyTextField extends StatelessWidget {
  MyTextField(
      {required this.hintText, this.prefixIcon, this.suffixIcon, super.key});
  String hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintText,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.kprimaryColor))),
    );
  }
}
