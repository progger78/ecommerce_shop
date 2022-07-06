import 'package:flutter/material.dart';
import 'categories.dart';
import '/utils/utils.dart';

import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';

import 'special_offers.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height15),
            const HomeHeader(),
            SizedBox(height: Dimensions.height15),
            const DiscountBanner(),
            SizedBox(height: Dimensions.height20),
            const Categories(),
            SizedBox(height: Dimensions.height20),
            const SpecialOffers(),
            SizedBox(height: Dimensions.height10 - 2),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}
