import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar(
        backgroundColor:Colors.grey,
        
         title: const Text('My Cart'),
      ),
      body: Container(
       

      ),
      
    );
  }
}