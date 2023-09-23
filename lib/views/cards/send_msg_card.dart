// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 172, 255, 190),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text('Hello friend'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '10:00 PM',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class GetMessage extends StatelessWidget {
  const GetMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 122, 168, 206),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text('Hello friend'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '10:00 PM',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
