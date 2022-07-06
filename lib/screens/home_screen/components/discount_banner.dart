import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: Dimensions.width10),
      height: getProportionateScreenHeight(105),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          color: AppColors.kPurpleColor),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.height20,
            horizontal: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             AppSmallText(
              text: 'A summer surprise',
              color: Colors.white,
              size: Dimensions.font16 + 2,
            ),
         
            AppBigText(
              text: 'Cashback 20%',
              fontWeight: FontWeight.bold,
              size: Dimensions.font30,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
