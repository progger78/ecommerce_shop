import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/theme.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      getPages: RouteHelper.pages,
      initialRoute: RouteHelper.initialScreen,
    );
  }
}
