import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../routes/route_helper.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import 'rounded_icon_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  final double rating;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RoundedIconButn(
              press: () => Get.offAndToNamed(RouteHelper.homeScreen),
              icon: Icons.arrow_back,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(5),
                  horizontal: Dimensions.width10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  Dimensions.radius15,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppSmallText(
                    text: rating.toString(),
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: Dimensions.width5),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(3)),
                    child: SvgPicture.asset('assets/icons/Star Icon.svg'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends PreferredSize {
  const CustomAppBar({required super.child, required super.preferredSize});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
