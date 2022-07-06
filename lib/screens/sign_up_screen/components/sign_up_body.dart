import 'package:flutter/material.dart';


import '../../../widgets/widgets.dart';
import '/screens/sign_up_screen/components/terms_and_conditions.dart';
import '/utils/utils.dart';
import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AppBigText(
                text: 'Register account',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                size: Dimensions.font26,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.01),
              AppSmallText(
                color: AppColors.kTextColor,
                textAlign: TextAlign.center,
                text:
                    'Complete your inforamtion or \nsign up with existing social account',
                size: getProportionateScreenHeight(17),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03
              ),
              const SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05),
              TermsAndConditons(),

            ],
          ),
        ),
      ),
    );
  }
}
