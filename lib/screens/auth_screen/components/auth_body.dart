import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/app_big_text.dart';
import 'package:ecommerce_shop/widgets/app_small_text.dart';

import 'package:flutter/material.dart';

import 'sign_form.dart';
import 'sign_up_line.dart';
import 'social_icon.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AppBigText(
                textAlign: TextAlign.center,
                text: 'Welcome Back',
                size: getProportionateScreenHeight(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              AppSmallText(
                textAlign: TextAlign.center,
                size: Dimensions.font22 - 4,
                text:
                    'Sign in with your login and password \nor continue with your social media account',
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              const SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    svgIcon: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    svgIcon: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialIcon(
                    svgIcon: 'assets/icons/twitter.svg',
                    press: () {},
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              const SignUpLine(),
            ],
          ),
        ),
      ),
    ));
  }
}
