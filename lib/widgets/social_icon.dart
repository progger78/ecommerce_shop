import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/utils.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    Key? key,
    required this.svgIcon,
    required this.press,
  }) : super(key: key);
  final String svgIcon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenHeight(12)),
        height: Dimensions.height45,
        width: Dimensions.width45,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: Color.fromARGB(255, 240, 240, 240)),
        child: SvgPicture.asset(
          svgIcon,
          width: Dimensions.width20,
          height: Dimensions.height20,
        ),
      ),
    );
  }
}
