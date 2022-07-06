import 'package:ecommerce_shop/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  AppIcon(
      {Key? key,
      required this.icon,
      this.onPressed,
      this.backgorundColor = Colors.white54,
      this.iconColor = Colors.black,
      this.height,
      this.width})
      : super(key: key);

  final IconData icon;
  Color? backgorundColor;
  Color? iconColor;
  VoidCallback? onPressed;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: height ?? getProportionateScreenHeight(45),
        width: width ?? getProportionateScreenWidth(45),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgorundColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: Dimensions.height25,
        ),
      ),
    );
  }
}
