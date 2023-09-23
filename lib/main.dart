// ignore_for_file: unused_import

import 'package:campusmarket/firebase_options.dart';
import 'package:campusmarket/views/home_page.dart';
import 'package:campusmarket/views/chat_main.dart';
import 'package:campusmarket/views/chat_page.dart';
import 'package:campusmarket/views/forgot_password.dart';
import 'package:campusmarket/views/add_new_product.dart';
import 'package:campusmarket/views/login_screen.dart';
import 'package:campusmarket/views/my_account.dart';
import 'package:campusmarket/views/signup_screen.dart';
import 'package:campusmarket/views/view_product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

late Size mq;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 197, 191, 191),
          )),
      initialRoute: "/chatOne",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/myAccount": (context) => const MyAccount(),
        "/home": (context) => const HomePage(),
        "/home": (context) => const HomePage(),
        "/createaccount": (context) => const CreateAccount(),
        "/forgotpassword": (context) => const ForgetPassword(),
        "/chatList": (context) => const ChatListPage(),
        "/chatOne": (context) => const ChatPage(),
        "/viewProduct": (context) => const ViewProduct(),
        "/addProduct": (context) => const AddProduct(),
      },
    );
  }
}
