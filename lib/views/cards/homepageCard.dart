// ignore_for_file: prefer_const_constructors

import 'package:campusmarket/views/cards/customCard/ProductCard.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      cardImage: Image.asset("asset/images/elon.jpeg"),
      cardIcon:Icon(Icons.book,size: 100,),
      titleText: "The psychology of money",
      subTitleText: 'Books',
      priceTitle: 'Rs.500',


    );
  }
}