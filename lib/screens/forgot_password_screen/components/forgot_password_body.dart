import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import '/utils/utils.dart';
import '../../sign_in_screen/components/sign_up_line.dart';
import 'forgot_password_form.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              AppBigText(
                text: 'Forgot Password',
                size: Dimensions.font26,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              AppSmallText(
                  textAlign: TextAlign.center,
                  size: Dimensions.font16 + 2,
                  text:
                      'Please enter your e-mail address \nso we can send a link to reset your password'),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const ForgotPasswordForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              const SignUpLine()
            ],
          ),
        ),
      ),
    );
  }
}
