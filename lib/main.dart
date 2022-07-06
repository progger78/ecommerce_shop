import 'package:ecommerce_shop/models/cart.dart';
import 'package:ecommerce_shop/models/products.dart';
import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/theme.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Product(),
        ),
        ChangeNotifierProvider(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider(
          create: (context) => Cart(),)
      ],
      child: GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: theme(),
        getPages: RouteHelper.pages,
        // home: HomeScreen(),
        initialRoute: RouteHelper.initialScreen,
      ),
    );
  }
}
