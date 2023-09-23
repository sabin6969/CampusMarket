import 'package:campusmarket/constants/validations.dart';
import 'package:flutter/material.dart';

Widget customTextFormField(
  bool isEmail,
  String labelText,
  TextEditingController controller,
  bool isHidden,
  Icon prefixIcon,
  String? Function(String?)? validator,
  Icon? suffixIcon,
) {
  return TextFormField(
    validator: (value) {
      final message = isEmail
          ? Validations.emailValidation(value!)
          : Validations.passwordValidation(value!);
      return message;
    },
    maxLines: 1,
    keyboardType: TextInputType.text,
    obscureText: isHidden,
    controller: controller,
    decoration: InputDecoration(
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
