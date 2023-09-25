import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;

  final Image cardImage;
  final String priceTitle;

  final Icon cardIcon;

  const CustomCardWidget({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.cardImage,
    required this.priceTitle,
    required this.cardIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.25,
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Card(
          child: Column(
        children: [
          Icon(
            cardIcon,
            size: 100,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            titleText,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            subTitleText,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            subTitleText,
            style: const TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
        ],
      )),
    );
  }
}
