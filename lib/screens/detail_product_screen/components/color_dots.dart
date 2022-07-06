import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../utils/utils.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  var _selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          widget.product.colors!.length,
          (index) => buildDotColor(
              color: widget.product.colors![index],
              selectedColor: _selectedColor,
              pressColor: () {
                setState(
                  () {
                    _selectedColor = index;
                  },
                );
              },
              index: index),
        )
      ],
    );
  }
}

Widget buildDotColor({color, selectedColor, pressColor, index}) {
  return GestureDetector(
    onTap: pressColor,
    child: Container(
      margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
      padding: EdgeInsets.all(getProportionateScreenHeight(4)),
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            color: selectedColor == index
                ? AppColors.kPrimaryColor
                : Colors.transparent),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    ),
  );
}
