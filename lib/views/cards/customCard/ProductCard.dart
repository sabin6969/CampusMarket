import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Widget cardWidget;
  final Image cardImage;
  final String lowerTitle;
  final int cardWidth;
  final IconData cardIcon;

  const CustomCardWidget({
    super.key,
    required this.titleText,
    required this.subTitleText,
    required this.cardImage,
    required this.cardWidget,
    required this.lowerTitle,
    required this.cardWidth,
    required this.cardIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.25,
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: Card(child: 
      Column(children: [

        Icon(cardIcon ,size: 100,),
        const SizedBox(height: 12,),
        Text(titleText,    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),)
      ],)),
    );
  }
}
