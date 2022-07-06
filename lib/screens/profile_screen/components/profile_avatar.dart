import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(150),
      width: getProportionateScreenHeight(150),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/Profile Image.png'),
          ),
          Positioned(
            bottom: 0,
            right: -2,
            child: Container(
              height: getProportionateScreenHeight(45),
              width: getProportionateScreenHeight(45),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.klightGreyColor,
                  border: Border.all(color: Colors.black54)),
              child: FlatButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black12),
                  borderRadius: BorderRadius.circular(Dimensions.radius50),
                ),
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
