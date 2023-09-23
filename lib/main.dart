import 'package:campusmarket/firebase_options.dart';
import 'package:campusmarket/views/chat_main.dart';
import 'package:campusmarket/views/chat_page.dart';
import 'package:campusmarket/views/login_screen.dart';
import 'package:campusmarket/views/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

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
      theme: ThemeData(brightness: Brightness.light),
      initialRoute: "/chatList",
      routes: {
        "/login": (context) => const LoginScreen(),
        "/chatList": (context) => const ChatListPage(),
        "/chatOne": (context) => const ChatPage(),
        "/createaccount": (context) => const CreateAccount(),
      },
    );
  }
}
