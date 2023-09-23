import 'package:flutter/material.dart';

Widget customTextFormField(String labelText, TextEditingController controller,
    bool isHidden, Icon prefixIcon,
    [Icon? suffixIcon]) {
  return TextFormField(
    keyboardType: TextInputType.text,
    obscureText: isHidden,
    controller: controller,
    decoration: InputDecoration(
      suffix: suffixIcon,
      prefixIcon: prefixIcon,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
