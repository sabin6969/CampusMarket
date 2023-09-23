import 'package:flutter/material.dart';

class CustomDialogBox {
  static showProgressDialogBox(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              Text("Requesting"),
            ],
          ),
        );
      },
    );
  }

  static hideDialogBox(BuildContext context) {
    Navigator.of(context).pop();
  }
}
