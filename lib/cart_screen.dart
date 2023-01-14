import 'package:flutter/material.dart';
import 'package:new_favin/cart_provider.dart';
import 'package:provider/provider.dart';

import 'package:new_favin/cart_item_s.dart';
import 'package:new_favin/destination_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cis = Provider.of<CartProvider>(context);
    //cis.items.
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: CartItemS('test', 20),
    );
  }
}
