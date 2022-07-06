import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class RoundedIconButn extends StatelessWidget {
  const RoundedIconButn({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        onPressed: press,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius50)),
        padding: EdgeInsets.zero,
        child: Icon(icon),
      ),
    );
  }
}
