import 'package:ecommerce_shop/utils/utils.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import 'app_big_text.dart';
import 'app_small_text.dart';

class CustomAlertDialog extends StatelessWidget {
  CustomAlertDialog({
    Key? key,
    required this.context,
    required this.content,
    this.title,
    this.twoButtons = true,
  }) : super(key: key);

  final BuildContext context;

  final String content;
  final String? title;
  bool twoButtons;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius25)),
      title: Text(title ?? 'Something went wrong'),
      content: AppBigText(
        text: content,
        color: Colors.black,
      ),
      actions: [
        twoButtons
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  buildFlatButton(
                      context: context,
                      text: 'Yes',
                      color: Colors.red,
                      press: () {
                        Navigator.of(context).pop(true);
                      }),
                  buildFlatButton(
                    context: context,
                    text: 'No',
                    color: AppColors.kTextColor,
                    press: () {
                      Navigator.of(context).pop(false);
                    },
                  ),
                ],
              )
            : buildFlatButton(
                context: context,
                text: 'Okay',
                color: Colors.red,
                press: () {
                  Navigator.of(context).pop();
                },
              ),
      ],
    );
  }

  FlatButton buildFlatButton({context, text, color, press}) {
    return FlatButton(
      onPressed: press,
      child: AppSmallText(
        text: text,
        color: color,
        size: Dimensions.font22,
      ),
    );
  }
}
