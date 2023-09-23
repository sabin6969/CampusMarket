import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title:const Text("CollegeShop",style: TextStyle(fontWeight: FontWeight.w600),),
        actions: [IconButton(icon: const Icon(Icons.abc,),onPressed: () => ())]
      ),
    );
  }
}
