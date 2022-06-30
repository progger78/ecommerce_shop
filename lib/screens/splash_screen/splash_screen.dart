import 'package:ecommerce_shop/utils/utils.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return const Scaffold( backgroundColor: Colors.white,
      body: Body(),);
  }
}