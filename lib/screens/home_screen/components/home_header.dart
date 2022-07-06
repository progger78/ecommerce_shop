import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import 'Icon_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SearchField(),
        IconWithCounter(
          svgIcon: 'assets/icons/Cart Icon.svg',
          press: () {
            Get.toNamed(RouteHelper.getCartScreen());
          },
        ),
        IconWithCounter(
          svgIcon: 'assets/icons/Bell.svg',
          press: () {},
          numOfItems: 3,
        ),
        SizedBox(
          width: Dimensions.width5,
        )
      ],
    );
  }
}
