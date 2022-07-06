import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

class CompletProfileScreenBody extends StatelessWidget {
  const CompletProfileScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              AppBigText(
                text: 'Complete Your Profile',
                color: Colors.black,
                size: Dimensions.font26,
              ),
              AppSmallText(
                textAlign: TextAlign.center,
                text: 'Complete your details \nor sign up with social account',
                size: Dimensions.font16 + 2,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              const CompleteProfileForm(),
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
            ],
          ),
        ),
      ),
    );
  }
}
