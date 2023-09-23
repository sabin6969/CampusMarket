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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Form(
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
                    "Enter your email",
                    emailController,
                    false,
                    const Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  customTextFormField(
                      "Enter your password",
                      passwordController,
                      true,
                      const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
