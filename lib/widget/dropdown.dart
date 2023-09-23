import 'package:flutter/material.dart';
class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}
const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Customize the border color
          ),
          borderRadius: BorderRadius.circular(10.0), // Customize the border radius
        ),
        child: DropdownButtonFormField<String>(
          value: dropdownValue,
          decoration: const InputDecoration(
            border: InputBorder.none, // Remove the default dropdown border
            prefixIcon: Icon(Icons.category)
          ),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}