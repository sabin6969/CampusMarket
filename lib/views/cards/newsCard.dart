// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({super.key});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        color: Color.fromARGB(255, 189, 225, 255),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Text(
              "Flu has overtaken covid become the new  deadly pandamic  in over 200 countries",
              style: TextStyle(
                color: const Color.fromARGB(255, 58, 58, 58),
                fontWeight: FontWeight.bold),
            ),
        
            SizedBox(height: 5,),
            Text(
              "The flu of 2023 which originated in italy has now been  transmitted to over 200 countries",
              style: TextStyle(
                color: Color.fromARGB(255, 125, 125, 125),
                fontSize: 12),
            ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: MaterialButton(
                    shape: StadiumBorder(),
                    color: Color.fromARGB(255, 111, 50, 203),
                    onPressed: () => (),child: Text("Read more of this news",style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 12)),),
                )
          
          ]),
        ),
      ),
    );
  }
}
