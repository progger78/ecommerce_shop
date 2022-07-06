import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.maxFinite,
      // padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),

      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBigText(
              text: 'OTP verification',
              size: Dimensions.font26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
            AppSmallText(
                textAlign: TextAlign.center,
                size: Dimensions.font16 + 2,
                text: 'We\'ve sent you code to +7-931-97-15-***'),
                
            buildTimer(),
            SizedBox(height: SizeConfig.screenHeight * 0.2),
            const OtpForm(),
             SizedBox(height: SizeConfig.screenHeight * 0.02),
            AppSmallText(
              text: 'Resend OTP Code',
              textDecoration: TextDecoration.underline,
              size: Dimensions.font16 + 2,
            )
          ],
        ),
      ),
    ));
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppSmallText(
            size: Dimensions.font16 + 2,
            textAlign: TextAlign.center,
            text: 'This code will expire in: '),
        TweenAnimationBuilder(
          duration: const Duration(seconds: 30),
          tween: Tween<double>(begin: 30, end: 0),
          builder: (BuildContext context, double value, Widget? child) {
            return Padding(
              padding: EdgeInsets.only(top: Dimensions.height5),
              child: Text(
                '00:${(value.toInt())}',
                style: TextStyle(
                    color: AppColors.kPrimaryColor,
                    fontSize: Dimensions.font16 + 2),
              ),
            );
          },
        ),
      ],
    );
  }
}

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? _focusNode2;
  FocusNode? _focusNode3;
  FocusNode? _focusNode4;
  @override
  void initState() {
    _focusNode2 = FocusNode();
    _focusNode3 = FocusNode();
    _focusNode4 = FocusNode();

    super.initState();
  }

  void setFocus({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  void dispose() {
    _focusNode2!.dispose();
    _focusNode3!.dispose();
    _focusNode4!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(65),
                child: TextFormField(
                  autofocus: true, //TODO implement into others forms
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: getProportionateScreenHeight(35)),
                  decoration: otpInputDecoration,
                  obscureText: true,
                  onChanged: (value) {
                    //TODO Find out how to save value
                    setFocus(value: value, focusNode: _focusNode2);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(65),
                child: TextFormField(
                  focusNode: _focusNode2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: getProportionateScreenHeight(35)),
                  decoration: otpInputDecoration,
                  obscureText: true,
                  onChanged: (value) {
                    setFocus(value: value, focusNode: _focusNode3);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(65),
                child: TextFormField(
                  focusNode: _focusNode3,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenHeight(35)),
                  decoration: otpInputDecoration,
                  obscureText: true,
                  onChanged: (value) {
                    setFocus(value: value, focusNode: _focusNode4);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(65),
                child: TextFormField(
                  focusNode: _focusNode4,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenHeight(35)),
                  decoration: otpInputDecoration,
                  obscureText: true,
                  onChanged: (value) {
                    _focusNode4!.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
            child: DefaultButton(text: 'Continue', press: () {Get.toNamed(RouteHelper.loginSuccessfulScreen);}),
          ),
        ],
      ),
    );
  }
}
