import 'package:campusmarket/constants/colors.dart';
import 'package:campusmarket/constants/text_styles.dart';
import 'package:campusmarket/controller/auth_controllers.dart';
import 'package:campusmarket/utils/reusable_snackbar.dart';
import 'package:campusmarket/views/reusable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Signup",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Form(
          key: globalKey,
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.3,
                width: size.width,
                child: Lottie.asset("asset/animations/SignupAnimation.json"),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    customTextFormField(
                      "name",
                      "Enter your name",
                      nameController,
                      false,
                      const Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      null,
                      null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFormField(
                        "phone",
                        "Phone number",
                        phoneController,
                        false,
                        const Icon(
                          Icons.call,
                          color: Colors.black,
                        ),
                        (p0) => null,
                        null),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFormField(
                        "email",
                        "Email",
                        emailController,
                        false,
                        const Icon(
                          Icons.alternate_email_sharp,
                          color: Colors.black,
                        ),
                        (p0) => null,
                        null),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFormField(
                      "password",
                      "Define your password",
                      passwordController,
                      true,
                      const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      (p0) => null,
                      const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    customTextFormField(
                      "password",
                      "Confirm Password",
                      confirmPasswordController,
                      true,
                      const Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      (p0) => null,
                      const Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      height: size.height * 0.07,
                      minWidth: size.width,
                      color: buttonColor,
                      shape: const StadiumBorder(),
                      onPressed: () {
                        if (globalKey.currentState!.validate() &&
                            confirmPasswordController.text
                                    .compareTo(passwordController.text) ==
                                0) {
                          try {
                            AuthController.createUserAccount(
                              emailController.text,
                              passwordController.text,
                              context,
                            );
                            emailController.clear();
                            passwordController.clear();
                            nameController.clear();
                            phoneController.clear();
                            confirmPasswordController.clear();
                          } catch (e) {
                            ReusableSnackBar.showSnackBar(
                                "An error occured", context);
                          }
                        } else {}
                      },
                      child: Text(
                        "Create Account",
                        style: buttonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
