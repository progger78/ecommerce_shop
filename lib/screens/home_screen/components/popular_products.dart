import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../models/products.dart';
import '../../../utils/utils.dart';
import 'product_card.dart';
import 'special_offers_tile.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTile(
          title: 'Popular Products',
          press: () {},
        ),
        SizedBox(height: Dimensions.height20),
        Consumer<Products>(
          builder: (context, productsData, child) => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  productsData.products.length,
                  (index) => ProductCard(
                    productsData: productsData,
                    index: index,
                    press: () {
                      Get.toNamed(RouteHelper.getDetailProductScreen(index));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
