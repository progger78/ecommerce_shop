import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/app_big_text.dart';
import 'package:ecommerce_shop/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessLogBody extends StatelessWidget {
  const SuccessLogBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/success.png',
              height: SizeConfig.screenHeight * 0.5,
            ),
            AppBigText(
              text: 'Successful Login',
              fontWeight: FontWeight.bold,
              size: getProportionateScreenHeight(36),
              color: Colors.black.withOpacity(0.7),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(40)),
              child: DefaultButton(
                  text: 'Go Back Home',
                  press: () {
                    Get.toNamed(RouteHelper.homeScreen);
                  }),
            )
          ],
        ));
  }
}
