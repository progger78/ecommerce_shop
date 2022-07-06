import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';

class CounterWithButns extends StatefulWidget {
  const CounterWithButns({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWithButns> createState() => _CounterWithButnsState();
}

class _CounterWithButnsState extends State<CounterWithButns> {
  var quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIcon(
          icon: Icons.remove,
          onPressed: () {
            if (quantity > 0) {
              setState(() {
                quantity--;
              });
            }
          },
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(5)),
          child: AppBigText(
            text: '${quantity}',
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        AppIcon(
          icon: Icons.add,
          onPressed: () {
            if (quantity >= 0) {
              setState(() {
                quantity++;
              });
            }
          },
        )
      ],
    );
  }
}

