import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Dimensions.width10),
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Dimensions.radius15,
          ),
          color: AppColors.kSecondaryColor.withOpacity(0.1)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle:
                TextStyle(color: Colors.black.withOpacity(0.5)),
            prefixIcon: const Icon(Icons.search),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(15),
                horizontal: getProportionateScreenWidth(15))),
      ),
    );
  }
}

