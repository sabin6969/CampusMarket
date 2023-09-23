import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
       appBar: AppBar(
  centerTitle: true,
  title: Text('AppBar'),
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.back_hand),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.shopping_cart),
    ),
   
  ],
),
      body: Container(
       

      ),
      
    );
  }
}