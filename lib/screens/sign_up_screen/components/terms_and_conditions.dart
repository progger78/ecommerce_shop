import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/utils.dart';

class TermsAndConditons extends StatelessWidget {
  const TermsAndConditons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          const TextSpan(
              style: TextStyle(color: AppColors.kTextColor),
              text:
                  'By continuing you confirm that you are agree on our '),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap =
                    () => Get.toNamed(RouteHelper.initialScreen),
              style: const TextStyle(
                  color: AppColors.kTextColor,
                  decoration: TextDecoration.underline),
              text: 'Terms and Conditions'),
        ],
      ),
    );
  }
}