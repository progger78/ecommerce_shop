import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/user_info.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  List<String> errors = [];
  var userInfo = UserInfo(
      userId: '',
      email: '',
      firstName: '',
      lastName: '',
      phoneNumber: '',
      address: '');

  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();

  @override
  void dispose() {
    _lastNameFocusNode.dispose();
    _phoneFocusNode.dispose();
    _addressFocusNode.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNamelFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildLastNamelFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          buildPhoneNumberTextField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          buildAddressTextField(),
          SizedBox(height: SizeConfig.screenHeight * 0.02),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.01),
          DefaultButton(
            text: 'Continue',
            press: () {
              var isValid = _formKey.currentState!.validate();
              if (isValid && errors.isEmpty) {
                _formKey.currentState!.save();
                Get.toNamed(RouteHelper.otpScreen);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.07),
        ],
      ),
    );
  }

  TextFormField buildFirstNamelFormField() {
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          label: Text('First name'),
          hintText: 'Enter your first name',
          suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User Icon.svg')),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kNamelNullError)) {
          setState(() {
            errors.remove(kNamelNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kNamelNullError)) {
          setState(() {
            errors.add(kNamelNullError);
          });
        }
        return null;
      },
      onSaved: (newValue) => UserInfo(
          userId: userInfo.userId,
          email: userInfo.email,
          firstName: newValue,
          lastName: userInfo.lastName,
          phoneNumber: userInfo.phoneNumber,
          address: userInfo.address),
      onFieldSubmitted: (ctx) =>
          Focus.of(context).requestFocus(_lastNameFocusNode),
    );
  }

  TextFormField buildLastNamelFormField() {
    return TextFormField(
        autocorrect: false,
        focusNode: _lastNameFocusNode,
        textInputAction: TextInputAction.next,
        decoration: const InputDecoration(
            label: Text('Last name'),
            hintText: 'Enter your last name',
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/User Icon.svg',
            )),
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
            setState(() {
              errors.remove(kLastNamelNullError);
            });
          }
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kLastNamelNullError)) {
            setState(() {
              errors.add(kLastNamelNullError);
            });
          }
          return null;
        },
        onSaved: (newValue) => UserInfo(
            userId: userInfo.userId,
            email: userInfo.email,
            firstName: userInfo.firstName,
            lastName: newValue,
            phoneNumber: userInfo.phoneNumber,
            address: userInfo.address),
        onFieldSubmitted: (ctx) =>
            Focus.of(context).requestFocus(_phoneFocusNode));
  }

  TextFormField buildPhoneNumberTextField() {
    return TextFormField(
      autocorrect: false,
      textInputAction: TextInputAction.next,
      focusNode: _phoneFocusNode,
      keyboardType:
          const TextInputType.numberWithOptions(decimal: true, signed: true),
      decoration: const InputDecoration(
          label: Text('Phone Number'),
          hintText: 'Enter your phone number',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Phone.svg',
          )),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.remove(kPhoneNumberNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          setState(() {
            errors.add(kPhoneNumberNullError);
          });
        }
        return null;
      },
      onSaved: (newValue) => UserInfo(
          userId: userInfo.userId,
          email: userInfo.email,
          firstName: userInfo.firstName,
          lastName: userInfo.lastName,
          phoneNumber: newValue,
          address: userInfo.address),
      onFieldSubmitted: (ctx) =>
          Focus.of(context).requestFocus(_addressFocusNode),
    );
  }

  TextFormField buildAddressTextField() {
    return TextFormField(
      keyboardType: TextInputType.streetAddress,
      focusNode: _addressFocusNode,
      autocorrect: false,
      decoration: const InputDecoration(
          label: Text('Your Address'),
          hintText: 'Enter your address',
          suffixIcon: CustomSuffixIcon(
            svgIcon: 'assets/icons/Location point.svg',
          )),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kAddressNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kAddressNullError);
          });
        }
        return null;
      },
      onSaved: (newValue) => UserInfo(
          userId: userInfo.userId,
          email: userInfo.email,
          firstName: userInfo.firstName,
          lastName: userInfo.lastName,
          phoneNumber: userInfo.phoneNumber,
          address: newValue),
    );
  }
}
