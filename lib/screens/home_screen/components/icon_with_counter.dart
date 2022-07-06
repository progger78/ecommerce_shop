import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class IconWithCounter extends StatelessWidget {
  const IconWithCounter({
    Key? key,
    required this.svgIcon,
    this.numOfItems,
    required this.press,
  }) : super(key: key);
  final String svgIcon;
  final int? numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(getProportionateScreenHeight(40)),
      onTap: press,
      child: Stack(
        children: [
          Container(
            // margin: EdgeInsets.only(right: Dimensions.width10),
            padding: EdgeInsets.all(getProportionateScreenHeight(10)),
            height: Dimensions.height45,
            width: Dimensions.width45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.kSecondaryColor.withOpacity(0.1),
            ),
            child: SvgPicture.asset(svgIcon),
          ),
          if (numOfItems != null)
            Positioned(
              right: 0,
              child: Container(
                width: getProportionateScreenWidth(15),
                height: getProportionateScreenHeight(15),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.redAccent),
                child: Center(
                  child: AppSmallText(
                    text: '$numOfItems',
                    color: Colors.white,
                    size: getProportionateScreenHeight(10),
                    height: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
