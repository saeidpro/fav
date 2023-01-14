import 'package:flutter/material.dart';

class CartItemS extends StatelessWidget {
  //const CartItemS({super.key});

  final String title;
  final double price;
  final String id;

  CartItemS(this.title, this.price, this.id);

  @override
  Widget build(BuildContext context) {
    return Card(child: Column(children: [
      Row(
        children: [
          Text(title),
          Text(price.toString()),
        ],
      ),
    ],),);
  }
}