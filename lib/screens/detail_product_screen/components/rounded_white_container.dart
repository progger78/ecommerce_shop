import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

class WhiteRoundedContainer extends StatelessWidget {
  const WhiteRoundedContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.height15),
      padding: EdgeInsets.only(top: Dimensions.height15),
      width: double.maxFinite,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius25),
            topRight: Radius.circular(Dimensions.radius25)),
      ),
      child: child,
    );
  }
}
