import 'package:ecommerce_shop/utils/utils.dart';
import 'package:flutter/material.dart';

import 'special_offers_card.dart';
import 'special_offers_tile.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(title: 'Special For You', press: () {}),
        SizedBox(height: Dimensions.height15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                category: 'Phones',
                image: 'assets/images/Image Banner 2.png',
                press: () {},
                numOfNewBrands: 20,
              ),
              SpecialOfferCard(
                category: 'Clothes',
                image: 'assets/images/Image Banner 3.png',
                press: () {},
                numOfNewBrands: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
