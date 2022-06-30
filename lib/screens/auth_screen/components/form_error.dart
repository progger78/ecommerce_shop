import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => errorText(errors: errors[index])),
    );
  }

  Row errorText({String? errors}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/Error.svg'),
        SizedBox(
          width: Dimensions.width5,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: Dimensions.height5),
          child: AppSmallText(text: errors!, color: AppColors.kTextColor,),
        )
      ],
    );
  }
}
