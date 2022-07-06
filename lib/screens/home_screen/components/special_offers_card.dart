import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
    required this.numOfNewBrands,
  }) : super(key: key);

  final String category, image;
  final int numOfNewBrands;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.width10),
      child: SizedBox(
        width: getProportionateScreenWidth(240),
        height: getProportionateScreenHeight(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(66, 34, 34, 34).withOpacity(0.4),
                      const Color.fromARGB(66, 34, 34, 34).withOpacity(0.1),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width10,
                    vertical: Dimensions.height15),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: '$category\n',
                        style: TextStyle(
                            fontSize: getProportionateScreenHeight(18),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '$numOfNewBrands New Brands')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
