import 'package:flutter/material.dart';
import '../main.dart';

class ViewProduct extends StatelessWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Product"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: mq.height * .4,
              width: double.infinity,
              child: Image.asset('asset/download 9.png',fit: BoxFit.cover,filterQuality: FilterQuality.high),
            ),
            Expanded(
              flex: 1,
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.propane_tank,color: Colors.black,),
                  title: Text("Table",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: mq.width * .05
                  ),),
                ),
                ListTile(
                  leading: const Icon(Icons.currency_rupee,color: Colors.black,),
                  title: Text("500",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mq.width * .05
                  ),),
                ),
                ListTile(
                  leading: const Icon(Icons.description,color: Colors.black,),
                  title: Text("Product Description",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mq.width * .05
                  ),
                  ),
                  subtitle: Text("Upgrade your dining experience with our Elegant Oak Wood Dining Table, a stunning addition to any home. Crafted with precision and care, this table blends timeless beauty with modern functionality, making it the perfect centerpiece for your dining room.",style: TextStyle(fontSize: mq.width* .04,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                ),
              ],),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: Color(0xff2037ff), label: Text("Buy Product\nRedirects to chat",style: TextStyle(fontWeight: FontWeight.w500),),
      ),
    );
  }
}
