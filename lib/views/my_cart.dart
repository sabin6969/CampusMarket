import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white, // Set the background color to white
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          color: Colors.black,
          iconSize: 25,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        width: 400,
        height: 120,
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          image: const DecorationImage(
              image: AssetImage("images/logo.png"),
              fit: BoxFit.fill,
          )
        ),
        
        child:const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Table',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'This table is designed to be model a',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
