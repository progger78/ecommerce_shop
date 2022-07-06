import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product, required this.onSeeMorePress,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback onSeeMorePress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppBigText(
          text: product.title!,
          fontWeight: FontWeight.bold,
          size: Dimensions.font26,
          color: AppColors.kTextColor,
        ),
        SizedBox(height: Dimensions.height10),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportionateScreenWidth(60),
            height: getProportionateScreenHeight(50),
            decoration: BoxDecoration(
              color: product.isFavorite
                  ? const Color.fromARGB(255, 255, 177, 171)
                  : const Color.fromARGB(255, 217, 217, 217),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius15),
                bottomLeft: Radius.circular(Dimensions.radius15),
              ),
            ),
            child: IconButton(
              onPressed: () {
                product.toggleFavorite();
              },
              icon: Icon(
                Icons.favorite,
                color: product.isFavorite
                    ? Colors.red
                    : const Color.fromARGB(255, 162, 162, 162),
              ),
            ),
          ),
        ),
        SizedBox(height: Dimensions.height5),
        Container(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(80)),
          child: AppSmallText(
            text: product.description!,
            maxLines: 3,
            size: Dimensions.font16 + 2,
            textOverflow: TextOverflow.ellipsis,
          ),
        ),
        GestureDetector(
          onTap: onSeeMorePress,
          child: Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppSmallText(
                  text: 'See more info',
                  size: Dimensions.font16 + 2,
                  fontWeight: FontWeight.bold,
                  color: AppColors.kPrimaryColor,
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: getProportionateScreenHeight(7)),
                    margin:
                        EdgeInsets.only(left: getProportionateScreenWidth(3)),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.kTextColor,
                      size: 12,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

