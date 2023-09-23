import 'package:flutter/material.dart';
import '../main.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

TextEditingController productName = TextEditingController();
TextEditingController productDes = TextEditingController();
TextEditingController price = TextEditingController();
TextEditingController category = TextEditingController();

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {

    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Product"),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('asset/Books.png',width: mq.width * .2,),
            TextFormField(
              controller: productName,
              maxLines: 1,
              autofocus: true,
              keyboardType: TextInputType.name,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                prefix:Image.asset('asset/Package.png',width: mq.width * .02,),
                  hintText: "Product Name",
              ),
            )
          ],
        ),
      ),
    );
  }
}
