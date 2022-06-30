import 'package:ecommerce_shop/screens/auth_screen/components/form_error.dart';
import 'package:ecommerce_shop/screens/auth_screen/components/sign_up_line.dart';
import 'package:ecommerce_shop/utils/dimensions.dart';
import 'package:ecommerce_shop/widgets/app_big_text.dart';
import 'package:ecommerce_shop/widgets/app_small_text.dart';
import 'package:ecommerce_shop/widgets/default_button.dart';
import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../auth_screen/components/custom_svg_suffix.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
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
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            const SignUpLine()
          ],
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  label: Text('Email'),
                  hintText: 'Enter your email',
                  suffixIcon:
                      CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg')),
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              onSaved: (newValue) => email = newValue),
           SizedBox(height: SizeConfig.screenHeight * 0.01),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.10),
          DefaultButton(text: 'Continue', press: () {
            if(_formKey.currentState!.validate()){


            }
          }),
        ],
      ),
    );
  }
}
