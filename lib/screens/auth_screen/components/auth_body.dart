import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/app_big_text.dart';
import 'package:ecommerce_shop/widgets/app_small_text.dart';
import 'package:ecommerce_shop/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
            Form(
                child: Column(
              children: [
                buildEmailTextField(),
                SizedBox(height: Dimensions.height15),
                buildPasswordTextField(),
                SizedBox(height: Dimensions.height15),
                DefaultButton(text: 'Continue', press: () {})
              ],
            ))
          ],
        ),
      ),
    ));
  }

  TextField buildPasswordTextField() {
    return TextField(
      decoration: InputDecoration(
          label: Text('Password'),
          hintText: 'Enter your paaswordl',
          suffixIcon: Padding(
            padding: EdgeInsets.only(
                right: Dimensions.width15,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: SvgPicture.asset(
              'assets/icons/Lock.svg',
              height: Dimensions.height20,
            ),
          )),
    );
  }

  TextField buildEmailTextField() {
    return TextField(
      decoration: InputDecoration(
          label: Text('Email'),
          hintText: 'Enter your email',
          suffixIcon: Padding(
            padding: EdgeInsets.only(
                right: Dimensions.width15,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: SvgPicture.asset(
              'assets/icons/Mail.svg',
              height: Dimensions.height20,
            ),
          )),
    );
  }
}
