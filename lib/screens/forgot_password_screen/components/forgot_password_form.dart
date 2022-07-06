import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<String> errors = [];
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
           SizedBox(height: SizeConfig.screenHeight * 0.02),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.15),
          DefaultButton(
              text: 'Continue',
              press: () {
                var isValid = _formKey.currentState!.validate();
                if (isValid && errors.isEmpty) {
                        _formKey.currentState!.save();
                  Get.toNamed(RouteHelper.initialScreen);
                }
          
              }),
        ],
      ),
    );
  }
}

