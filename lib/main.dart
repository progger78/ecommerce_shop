import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/theme.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'utils/size_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


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
