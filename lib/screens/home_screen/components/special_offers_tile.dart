import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width15 - 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppSmallText(
            text: title,
            size: Dimensions.font16 + 2,
            fontWeight: FontWeight.w500,
          ),
          GestureDetector(
            onTap: press,
            child: AppSmallText(
              text: 'See More',
              color: AppColors.kPrimaryColor,
              fontWeight: FontWeight.bold,
              size: Dimensions.font16 + 2,
            ),
          )
        ],
      ),
    );
  }
}
