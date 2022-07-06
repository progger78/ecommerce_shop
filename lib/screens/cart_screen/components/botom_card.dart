import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/cart.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../../detail_product_screen/components/rounded_white_container.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
    required this.cart,
    required this.press,
  }) : super(key: key);

  final Cart cart;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return WhiteRoundedContainer(
      color: AppColors.klightGreyColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(30)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: getProportionateScreenWidth(8)),
                  padding: EdgeInsets.all(getProportionateScreenHeight(7)),
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 177, 149)
                          .withOpacity(0.2),
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius15 - 5)),
                  // padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                  child: SvgPicture.asset(
                    'assets/icons/receipt.svg',
                  ),
                ),
                Row(
                  children: [
                    AppSmallText(
                      text: 'Add voucher code',
                      size: Dimensions.font22 - 2,
                      color: AppColors.kTextColor,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: getProportionateScreenHeight(8)),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: getProportionateScreenHeight(15),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    AppSmallText(
                      text: 'total',
                      size: Dimensions.font22,
                      fontWeight: FontWeight.w500,
                    ),
                    AppSmallText(
                      text: '\$${cart.totalAmount.toStringAsFixed(2)}',
                      color: AppColors.kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      size: Dimensions.font22 - 2,
                    )
                  ],
                ),
                DefaultButton(
                  text: 'ORDER NOW',
                  press: press,
                  width: getProportionateScreenWidth(200),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
