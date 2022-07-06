
import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class SignUpLine extends StatelessWidget {
  const SignUpLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppSmallText(
          text: 'Don\'t have an account?',
          color: AppColors.kTextColor,
          size: Dimensions.font22 - 2,
        ),
        SizedBox(width: Dimensions.width5),
        GestureDetector(
          onTap: () {
            Get.toNamed(RouteHelper.signUpScreen);
           
          },
          child: AppSmallText(
            size: Dimensions.font22 - 2,
            text: 'Sign Up',
            color: AppColors.kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
