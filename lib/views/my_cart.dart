import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: AppBar(
  backgroundColor: Colors.grey,
  title: Text('My Cart'),
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.backpack_outlined),
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