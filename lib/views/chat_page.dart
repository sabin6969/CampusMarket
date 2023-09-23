// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:campusmarket/views/cards/send_msg_card.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          flexibleSpace: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.network(
                    'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Rohana',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight, child: SendMessage()),
                    Align(alignment: Alignment.centerLeft, child: GetMessage()),
                    Align(
                        alignment: Alignment.centerRight, child: SendMessage()),
                    Align(alignment: Alignment.centerLeft, child: GetMessage()),
                    Align(
                        alignment: Alignment.centerRight, child: SendMessage()),
                    Align(alignment: Alignment.centerLeft, child: GetMessage()),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width * .88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: Border.all(),
                    ),
                    child: TextField(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
