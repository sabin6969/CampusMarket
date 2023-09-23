// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(226, 221, 221, 221),
          leading: const Icon(
            Icons.home,
            color: Color.fromARGB(255, 114, 36, 166),
            size: 40,
          ),
          title: const Text(
            "CollegeShop",
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          actions: [
            IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                onPressed: () => ())
          ]),
      body: Column(children: [
        TopSection(),
        NewArrival(),
      ]),
    );
  }
}

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            color: Color.fromARGB(255, 38, 51, 190),
          ),
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Get Special Discount \n       upto 50%",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: MaterialButton(
                      onPressed: () => (),
                      child: Text(
                        "Buy",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
              Icon(
                Icons.book_online,
                size: 100,
                color: Colors.amberAccent,
              )
            ],
          )),
    );
  }
}

class NewArrival extends StatefulWidget {
  const NewArrival({super.key});

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Latest Arrivals"),
                  InkWell(
                    child: Text(
                      "See all",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    onTap: () => (),
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(),
            width: MediaQuery.sizeOf(context).width,
            child: Row(children: [
              Card(
                elevation: 1.5,
                color: Colors.white,
                child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
                  width: MediaQuery.sizeOf(context).width*0.25,
                  height: MediaQuery.sizeOf(context).height*0.2, 
                  child: Column(
                    
                    children: [Container(
                       decoration: BoxDecoration(
                         color: Color.fromARGB(255, 232, 230, 230),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight:Radius.circular(12),)),
                      width:MediaQuery.sizeOf(context).width*0.25 ,
                     
                      child: Icon(Icons.book_online_outlined,size: 80,color: Colors.purple,))
                  ,
              
                    SizedBox(height: 10),
                  Text("The psychology of \nmoney")
                  ,SizedBox(height: 10)
                  ,Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Text("Books",style: TextStyle(color: Colors.grey),),
                  ),SizedBox(height: 10)
                  ,Padding(
                    padding: const EdgeInsets.only(right: 80),
                    child: Text("Rs 500",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
                  )
                  ]),
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
