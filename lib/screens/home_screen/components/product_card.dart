import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../models/products.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.productsData,
    required this.index, required this.press,
  }) : super(key: key);

  final Products productsData;
  final int index;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return GestureDetector(
      onTap:  press,
      child: Container(
        margin: EdgeInsets.only(
          left: Dimensions.width10,
        ),
        width: getProportionateScreenWidth(150),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                  color: AppColors.kTextColor.withOpacity(0.1),
                  image: DecorationImage(
                    image: AssetImage(
                      productsData.products[index].images!.first,
                    ),
                  ),
                ),
              ),
            ),
            AppSmallText(
                text: productsData.products[index].title!,
                size: getProportionateScreenHeight(18),
                maxLines: 2,
                textAlign: TextAlign.start),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppSmallText(
                  text: '\$${productsData.products[index].price}',
                  color: AppColors.kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  size: getProportionateScreenHeight(18),
                ),
                Padding(
                  padding: EdgeInsets.only(right: Dimensions.width5),
                  child: IconButton(
                    onPressed: () {
                      product.toggleFavorite();
                    },
                    icon: Icon(product.isFavorite
                        ? Icons.favorite
                        : Icons.favorite_outline),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
