import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../../../widgets/form_error.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  String? password;
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildPasswordTextField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildConfirmPasswordTextField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          DefaultButton(
            text: 'Continue',
            press: () {
              var isValid = _formKey.currentState!.validate();
              if (isValid && errors.isEmpty) {
                _formKey.currentState!.save();
                Get.toNamed(RouteHelper.getCompleteProfileScreen());
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.07),
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
          AppSmallText(text: '')
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      autocorrect: false,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
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
      textInputAction: TextInputAction.next,
      controller: _passwordController,
      obscureText: true,
      autocorrect: false,
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
      onFieldSubmitted: (ctx) =>
          Focus.of(context).requestFocus(_confirmPasswordFocusNode),
    );
  }

  TextFormField buildConfirmPasswordTextField() {
    return TextFormField(
      obscureText: true,
      autocorrect: false,
      decoration: const InputDecoration(
          label: Text('Password'),
          hintText: 'Confirm your password',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Lock.svg',
          )),
      onChanged: (value) {
        if (value == _passwordController.text &&
            errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value != _passwordController.text &&
            !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
          });
        }
        return null;
      },
      onSaved: (newValue) => password = newValue,
    );
  }
}
