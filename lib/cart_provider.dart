import 'package:flutter/material.dart';

class CartItem {
  final String cartTitle;
  final double cartPrice;
  final String cartId;
  final int cartQuantity;

  CartItem({
    required this.cartId,
    required this.cartPrice,
    required this.cartQuantity,
    required this.cartTitle,
  });
}

class CartProvider with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {...items};
  }

  void addItem(String destinationId, double price, String title) {
    if (_items.containsKey(destinationId)) {
      _items.update(
          destinationId,
          (existingCartItem) => CartItem(
                cartId: existingCartItem.cartId,
                cartPrice: existingCartItem.cartPrice,
                cartQuantity: existingCartItem.cartQuantity + 1,
                cartTitle: existingCartItem.cartTitle,
              ));
    } else {
      _items.putIfAbsent(
          destinationId,
          () => CartItem(
              cartId: DateTime.now().toString(),
              cartPrice: price,
              cartQuantity: 1,
              cartTitle: title));
    }
    var ite = _items.values.toList();
    print(ite[0].cartPrice);
    notifyListeners();
  }
}
