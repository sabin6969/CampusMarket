import 'package:campusmarket/constants/validations.dart';
import 'package:flutter/material.dart';

Widget customTextFormField(
  String type,
  String labelText,
  TextEditingController controller,
  bool isHidden,
  Icon prefixIcon,
  String? Function(String?)? validator,
  Icon? suffixIcon,
) {
  return TextFormField(
    validator: (value) {
      if (type.compareTo("email") == 0) {
        if (value!.isEmpty) {
          return "This field is required";
        } else if (isEmailValid(value) == false) {
          return "Enter valid email";
        } else {
          return null;
        }
      } else if (type.compareTo("password") == 0) {
        if (value!.isEmpty) {
          return "This field is required";
        } else if (value.length < 6) {
          return "Too short password";
        } else {
          return null;
        }
      } else if (type.compareTo("phone") == 0) {
        if (value!.isEmpty) {
          return "This field is required";
        } else if (value.length != 10 && int.tryParse(value) != null) {
          return "Enter valid phone number";
        } else {
          return null;
        }
      } else if (type.compareTo("password") == 0) {
        if (value!.isEmpty) {
          return "This field is required";
        } else if (value.length < 6) {
          return "Too short password";
        } else {
          return null;
        }
      } else if (type.compareTo("name") == 0) {
        if (value!.isEmpty) {
          return "This field is required";
        } else if (value.length < 3) {
          return "Too short username";
        } else {
          return null;
        }
      } else {
        return null;
      }
    },
    maxLines: 1,
    keyboardType: TextInputType.text,
    obscureText: isHidden,
    controller: controller,
    decoration: InputDecoration(
      filled: true,
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
