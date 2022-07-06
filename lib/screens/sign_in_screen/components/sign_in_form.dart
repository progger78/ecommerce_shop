import 'package:ecommerce_shop/widgets/app_small_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/utils.dart';
import '../../../widgets/default_button.dart';
import '../../../widgets/custom_svg_suffix.dart';
import '../../../widgets/form_error.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? password;
  String? email;
  bool remember = false;

  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextField(),
          SizedBox(height: Dimensions.height15),
          buildPasswordTextField(),
          SizedBox(height: Dimensions.height10),
          Row(
            children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: remember ? AppColors.kPrimaryColor : Colors.black,
                value: remember,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              AppSmallText(
                text: 'Remember Me',
                size: Dimensions.font22 - 3,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RouteHelper.forgotPasswordScreen);
                },
                child: AppSmallText(
                  text: 'Forgot Password',
                  textDecoration: TextDecoration.underline,
                  size: Dimensions.font22 - 3,
                ),
              )
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              var isValid = _formKey.currentState!.validate();
              if (isValid && errors.isEmpty) {
                _formKey.currentState!.save();
                Get.toNamed(RouteHelper.loginSuccessfulScreen);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          label: Text('Email'),
          hintText: 'Enter your email',
          suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg')),
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
      onSaved: (newValue) => email = newValue,
      onFieldSubmitted: (ctx) =>
          Focus.of(context).requestFocus(_passwordFocusNode),
    );
  }

  TextFormField buildPasswordTextField() {
    return TextFormField(
      obscureText: true,
      autocorrect: false,
      focusNode: _passwordFocusNode,
      decoration: const InputDecoration(
          label: Text('Password'),
          hintText: 'Enter your password',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Lock.svg',
          )),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length <= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
        }
        return null;
      },
      onSaved: (newValue) => password = newValue,
    );
  }
}
