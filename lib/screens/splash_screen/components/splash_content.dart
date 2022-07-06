import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Column(
              children: [
                Spacer(),
                AppBigText(
                  text: 'LaMoDa',
                  size: getProportionateScreenHeight(36),
                  fontWeight: FontWeight.bold,
                ),
                AppBigText(
                  textAlign: TextAlign.center,
                  text: text,
                  color: AppColors.kTextColor,
                  size: getProportionateScreenHeight(16),
                ),
                const Spacer(flex: 2),
                Image.asset(
                  image,
                  width: getProportionateScreenHeight(260),
                  height: getProportionateScreenWidth(330),
                )
              ],
            ),
        
        
       
      
    );
  }
}
