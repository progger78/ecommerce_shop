import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const ProfileBody(),
    );
  }
}
