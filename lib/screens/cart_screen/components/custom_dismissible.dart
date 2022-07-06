import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/cart.dart';
import '../../../utils/utils.dart';
import '../../../widgets/custom_alert_dialog.dart';

class CustomDismissible extends StatelessWidget {
  const CustomDismissible(
      {Key? key, required this.index, required this.cart, required this.child})
      : super(key: key);
  final int index;
  final Cart cart;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        direction: DismissDirection.endToStart,
        background: Container(
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(
                Dimensions.radius15,
              ),
              bottomRight: Radius.circular(
                Dimensions.radius15,
              ),
            ),
          ),
          padding: EdgeInsets.only(right: getProportionateScreenWidth(40)),
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(5),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(
              'assets/icons/Trash.svg',
              color: Colors.red,
            ),
          ),
        ),
        key: ValueKey(cart.cartItem.values.toList()[index].id),
        confirmDismiss: (direction) => showDialog(
              context: context,
              builder: (ctx) => CustomAlertDialog(
                  title: 'Are you sure?',
                  context: ctx,
                  content: 'Are you sure you want to delete?'),
            ),
        onDismissed: (direction) =>
            cart.deleteItem(cart.cartItem.keys.toList()[index]),
        child: child);
  }
}
