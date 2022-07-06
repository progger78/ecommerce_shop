import 'package:ecommerce_shop/utils/utils.dart';

import 'package:flutter/material.dart';


import 'profile_avatar.dart';
import 'profile_menu_item.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ProfileAvatar(),
          SizedBox(height: getProportionateScreenHeight(20)),
          ProfileMenuItem(
            icon: 'assets/icons/User.svg',
            text: 'My account',
            press: () {},
          ),
          ProfileMenuItem(
            icon: 'assets/icons/Bell.svg',
            text: 'Settings',
            press: () {},
          ),
          ProfileMenuItem(
            icon: 'assets/icons/User.svg',
            text: 'Notifications',
            press: () {},
          ),
          ProfileMenuItem(
            icon: 'assets/icons/Question mark.svg',
            text: 'Help Center',
            press: () {},
          ),
          ProfileMenuItem(
            icon: 'assets/icons/Log out.svg',
            text: 'Log Out',
            press: () {},
          ),
        ],
      ),
    );
  }
}

