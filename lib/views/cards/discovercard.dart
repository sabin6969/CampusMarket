// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DiscoverSectionCard extends StatefulWidget {
  const DiscoverSectionCard({super.key});

  @override
  State<DiscoverSectionCard> createState() => _DiscoverSectionCardState();
}

class _DiscoverSectionCardState extends State<DiscoverSectionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 154, 6, 213),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          color: Color.fromARGB(255, 154, 6, 213),
          elevation: 0,
          child: Column(children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 255, 255, 255),
              child: Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Aliza Rya",
              style: TextStyle(color: Colors.white),
            ),

            IconButton(icon: Icon(Icons.add,color: Colors.white,),onPressed: () => (),)
          ]),
        ),
      ),
    );
  }
}
