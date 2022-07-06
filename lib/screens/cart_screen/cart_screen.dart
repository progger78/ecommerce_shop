import 'package:ecommerce_shop/models/cart.dart';
import 'package:ecommerce_shop/screens/cart_screen/components/cart_screen_body.dart';


import 'package:ecommerce_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'components/botom_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const AppSmallText(text: 'Your Cart'),
            AppSmallText(text: '${cart.getTotalQuantity} items')
          ],
        ),
      ),
      body: CartScreenBody(
        cart: cart,
      ),
      bottomNavigationBar: BottomCard(cart: cart, press: () {}),
    );
  }
}
