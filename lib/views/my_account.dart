import 'package:flutter/foundation.dart';
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
        leading: Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            "Elon Musk",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 197, 191, 191),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("asset/images/elon.jpeg")),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.blue,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 130),
                      child: Text("update profile"),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                ListTile(
                  title: Text(
                    "Elon Musk",
                    style: TextStyle(color: Colors.black),
                  ),
                  tileColor: const Color.fromARGB(255, 232, 228, 228),
                  leading: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "elon343@tesla.com",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  tileColor: const Color.fromARGB(255, 232, 228, 228),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "+1 8943743284732",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  tileColor: const Color.fromARGB(255, 232, 228, 228),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "4.8",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  tileColor: const Color.fromARGB(255, 232, 228, 228),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
