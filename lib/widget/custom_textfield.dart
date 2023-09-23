import 'package:flutter/material.dart';

import '../main.dart';

Widget customTextFormField(
  String labelText,
  TextEditingController controller,
  bool isHidden,
  Icon prefixIcon,
) {
  return TextFormField(
    maxLines: 1,
    autofocus: true,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    keyboardType: TextInputType.text,
    obscureText: isHidden,
    controller: controller,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      errorStyle: TextStyle(color: Colors.red, fontSize: mq.width * .04),
    ),
  );
}
