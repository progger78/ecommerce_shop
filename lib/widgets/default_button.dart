import 'package:ecommerce_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: getProportionateScreenHeight(60),
      child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius20)),
          color: AppColors.kPrimaryColor,
          onPressed: press,
          child: AppBigText(
            text: text,
            fontWeight: FontWeight.w500,
            size: getProportionateScreenHeight(20),
            color: Colors.white,
          )),
    );
  }
}
