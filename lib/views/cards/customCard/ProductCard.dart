import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final Image cardImage;
  final String titleText;
  final String subTitleText;
  final double cardWidth;
  final double cardHeight;
  final String priceTitle;

  const CustomCardWidget({
    super.key,
    required this.cardImage,
    required this.titleText,
    required this.subTitleText,
    required this.priceTitle,
    required this.cardHeight,
    required this.cardWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(12))),
      width:cardWidth,
      height:cardHeight,
      child: Card(
        elevation: 5,
          child: Column(
        children: [
          cardImage,
          const SizedBox(
            height: 8,
          ),
          Text(
            titleText,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Text(
              subTitleText,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Text(
              priceTitle,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
