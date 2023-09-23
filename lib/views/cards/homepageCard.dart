// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 1.5,
                color: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: Column(children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 232, 230, 230),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            )),
                        width: MediaQuery.sizeOf(context).width * 0.25,
                        child: Icon(
                          Icons.book_online_outlined,
                          size: 80,
                          color: Colors.purple,
                        )),
                    SizedBox(height: 10),
                    Text("The psychology of \nmoney"),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "Books",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        "Rs 500",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                    )
                  ]),
                ),
              );
  }
}