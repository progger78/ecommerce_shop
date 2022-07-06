import 'package:flutter/material.dart';
import 'cart_item.dart' as ci;

import '../../../models/cart.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    Key? key,
    required this.cart,
  }) : super(key: key);
  final Cart cart;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.getTotalQuantity,
      itemBuilder: (context, index) => ci.CartItem(
        cart: cart,
        index: index,
      ),
    );
  }
}
