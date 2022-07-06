import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/icons/Flash Icon.svg', 'text': 'Flash Deal'},
      {'icon': 'assets/icons/Bill Icon.svg', 'text': 'Bill'},
      {'icon': 'assets/icons/Game Icon.svg', 'text': 'Game'},
      {'icon': 'assets/icons/Gift Icon.svg', 'text': 'Gifts'},
      {'icon': 'assets/icons/Discover.svg', 'text': 'Discover'},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryItem(
              svgIcon: categories[index]['icon'],
              text: categories[index]['text'],
              press: () {
               
              },
            ),
          )
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.svgIcon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String svgIcon;
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(55),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor.withOpacity(0.2),
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius15 - 10)),
                padding: EdgeInsets.all(getProportionateScreenHeight(15)),
                child: SvgPicture.asset(svgIcon),
              ),
            ),
          ),
          SizedBox(
            child: AppSmallText(
              text: text,
              color: AppColors.kTextColor,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
