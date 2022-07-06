import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(5),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: AppColors.klightGreyColor),
        width: double.maxFinite,
        height: getProportionateScreenHeight(65),
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(8)),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 20,
              color: AppColors.kPrimaryColor,
            ),
            SizedBox(width: getProportionateScreenHeight(10)),
            Expanded(
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: getProportionateScreenHeight(18)),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.kTextColor,
            )
          ],
        ),
      ),
    );
  }
}
