import 'package:ecommerce_shop/models/cart.dart';
import 'package:ecommerce_shop/utils/utils.dart';
import 'package:ecommerce_shop/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_dots.dart';
import 'counter_with_butns.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'package:ecommerce_shop/models/products.dart';

import 'rounded_white_container.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key, required this.pageId}) : super(key: key);

  final int pageId;
  @override
  Widget build(BuildContext context) {
    var quantity = 0;
    final product = Provider.of<Products>(context).products[pageId];
    // final product2 = Provider.of<Product>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          WhiteRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  onSeeMorePress: () {},
                ),
                WhiteRoundedContainer(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(15),
                      right: getProportionateScreenWidth(15),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ColorDots(product: product),
                            const CounterWithButns(),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(20),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(25)),
                          child: Consumer<Cart>(
                            builder: (context, cartData, child) =>
                                DefaultButton(
                              text: 'Add to Cart',
                              press: () {
                                cartData.addToCart(
                                  product.id!,
                                  product.price!,
                                  product.images![0],
                                  product.title!,
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
