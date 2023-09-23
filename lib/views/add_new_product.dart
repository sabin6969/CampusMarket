import 'package:flutter/material.dart';
import '../main.dart';
import '../widget/custom_textfield.dart';
import '../widget/dropdown.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

TextEditingController productName = TextEditingController();
TextEditingController productDes = TextEditingController();
TextEditingController price = TextEditingController();

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Product"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/Books.png',
                width: mq.width * .5,
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
              ),
              customTextFormField(
                "Product Name",
                productName,
                false,
                const Icon(Icons.shopping_bag),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              customTextFormField(
                "Product Description",
                productDes,
                false,
                const Icon(Icons.description),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              customTextFormField(
                "Price",
                price,
                false,
                const Icon(Icons.currency_rupee),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const DropdownMenuExample(),
              const Padding(padding: EdgeInsets.all(8.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: mq.height * .07,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Border radius
                            ),
                            primary: const Color(0xff2037ff)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.file_copy_outlined,
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            Text("Select Image",
                                style: TextStyle(fontSize: mq.width * .04)),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: mq.height * .07,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(10), // Border radius
                            ),
                            primary: const Color(0xff2037ff)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.add_circle,
                            ),
                            const Padding(padding: EdgeInsets.all(8.0)),
                            Text("Add Product",
                                style: TextStyle(fontSize: mq.width * .04)),
                          ],
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
