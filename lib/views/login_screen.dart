import 'package:campusmarket/constants/colors.dart';
import 'package:campusmarket/constants/text_styles.dart';
import 'package:campusmarket/constants/validations.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:campusmarket/views/reusable_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Form(
        key: globalKey,
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.45,
              width: size.width,
              child: Lottie.asset("asset/animations/LoginAnimation.json"),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                children: [
                  customTextFormField(
                    true,
                    "Enter your email",
                    emailController,
                    false,
                    const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    null,
                    null,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextFormField(
                    false,
                    "Enter your password",
                    passwordController,
                    true,
                    const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    null,
                    const Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "New here?",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text("Remember Me")
                    ],
                  ),
                  MaterialButton(
                    height: size.height * 0.07,
                    minWidth: size.width,
                    shape: const StadiumBorder(),
                    onPressed: () {
                      if (globalKey.currentState!.validate()) {}
                    },
                    color: buttonColor,
                    child: Text(
                      "Login",
                      style: buttonTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Having trouble?"),
                      TextButton(
                          onPressed: () {}, child: const Text("Contact us"))
                    ],
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
