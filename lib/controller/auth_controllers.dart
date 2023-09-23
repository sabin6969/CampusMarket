import 'package:campusmarket/utils/progress_dialogbox.dart';
import 'package:campusmarket/utils/reusable_snackbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth auth = FirebaseAuth.instance;

class AuthController {
  static createUserAccount(
      String email, String password, BuildContext context) async {
    try {
      CustomDialogBox.showProgressDialogBox(context);
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then(
        (value) {
          CustomDialogBox.hideDialogBox(context);
          ReusableSnackBar.showSnackBar(
              "Account created, you can now login", context);
        },
      ).catchError((error) {
        CustomDialogBox.hideDialogBox(context);
        String errorMessage = "";
        if (error is FirebaseAuthException) {
          switch (error.code) {
            case "email-already-in-use":
              errorMessage = "Email is already in use.";
              break;
            case "weak-password":
              errorMessage = "Password is too weak.";
              break;
            default:
              errorMessage = "An error occurred.";
              break;
          }
        } else {
          errorMessage = "An unexpected error occurred.";
        }

        ReusableSnackBar.showSnackBar(errorMessage, context);
      });
    } catch (e) {
      if (context.mounted) {
        ReusableSnackBar.showSnackBar("An unkown error occured", context);
      }
    }
  }

  static loginUser(String email, String password, BuildContext context) async {
    try {
      CustomDialogBox.showProgressDialogBox(context);
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then(
        (value) {
          CustomDialogBox.hideDialogBox(context);
          ReusableSnackBar.showSnackBar("Login sucess", context);
        },
      ).onError(
        (error, stackTrace) {
          CustomDialogBox.hideDialogBox(context);
          ReusableSnackBar.showSnackBar(
              "Failed to login, check email and password", context);
        },
      );
    } catch (e) {
      debugPrint("An error occured");
    }
  }
}
