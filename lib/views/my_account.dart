import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Elon Musk",style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
      backgroundColor: Colors.grey,
      actions: [
        Icon(Icons.person,color: Colors.black,),
        Icon(Icons.logout,color: Colors.black,),
      ],
    ),
    );
  }
}