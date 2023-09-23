import 'package:campusmarket/constants/colors.dart';
import 'package:campusmarket/constants/text_styles.dart';
import 'package:campusmarket/views/reusable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: globalKey,
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child:
                  Lottie.asset("asset/animations/ResetPasswordAnimation.json"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  customTextFormField(
                    "email",
                    "Enter your email",
                    emailController,
                    false,
                    const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    (p0) => null,
                    null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    height: size.height * 0.06,
                    minWidth: size.width,
                    color: buttonColor,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {}
                    },
                    child: Text(
                      "Send reset link",
                      style: buttonTextStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
