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
    //cis.items.containsKey(key);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cis.items == null
          ? Center(
              child: Text('empty'),
            )
          : Container(
            height: 300,
            child: ListView.builder(
                itemCount: cis.items.length,
                itemBuilder: (_, i) => CartItemS(cis.items[i]!.cartTitle,
                    cis.items[i]!.cartPrice, cis.items[i]!.cartId),
              ),
          ),
      //CartItemS('test', 20),
    );
  }
}
