import 'package:flutter/material.dart';

import '/models/cart.dart';
import '/utils/utils.dart';
import '/widgets/widgets.dart';
import 'custom_dismissible.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.cart,
    required this.index,
  }) : super(key: key);

  final Cart cart;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CustomDismissible(
      cart: cart,
      index: index,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(5),
        ),
        width: double.maxFinite,
        height: getProportionateScreenHeight(120),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(getProportionateScreenHeight(10)),
              alignment: Alignment.center,
              width: getProportionateScreenWidth(120),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.klightGreyColor),
              child: Image.asset(cart.cartItem.values.toList()[index].image),
            ),
            SizedBox(width: Dimensions.width10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSmallText(text: cart.cartItem.values.toList()[index].title),
                Row(
                  children: [
                    AppSmallText(
                        size: Dimensions.font22,
                        color: AppColors.kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        text:
                            '\$${cart.cartItem.values.toList()[index].price}'),
                    AppSmallText(
                        size: Dimensions.font22,
                        fontWeight: FontWeight.bold,
                        text:
                            ' x ${cart.cartItem.values.toList()[index].quantity.toString()}')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
