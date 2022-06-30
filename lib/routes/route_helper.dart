import 'dart:math';

import 'package:ecommerce_shop/screens/auth_screen/auth_screen.dart';
import 'package:ecommerce_shop/screens/forgot_password_screen/forgot_password_screen.dart';
import 'package:ecommerce_shop/screens/login_succesfull_screen/login_successful.dart';
import 'package:ecommerce_shop/screens/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initialScreen = '/';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String authScreen = '/auth-screen';
  static const String loginSuccessfulScreen = '/login-successful-screen';

  static const String detailProductScreen = '/detail-product-screen';
  static const String cartScreen = '/cart-screen';
  static const String ordersScreen = '/order-screen';
  static const String userProductScreen = '/user-product-screen';
  static const String editProductScreen = '/edit-product-screen';

  static const String mainFoodScreen = '/main-food-screen';

  static getInitial() => initialScreen;
  static getDetailProductScreen(int pageId) =>
      '$detailProductScreen?pageId=$pageId';
  static getCartScreen() => cartScreen;
  static getOrdersScreen() => ordersScreen;
  static getUserProductScreen() => userProductScreen;
  static getAuthScreen() => authScreen;
  static getEditProductScreen(int? pageId) =>
      '$editProductScreen?pageId=$pageId';
  static List<GetPage> pages = [
    GetPage(
        name: initialScreen,
        transition: Transition.fadeIn,
        page: () {
          return const SplashScreen();
        }),
    GetPage(
        name: authScreen,
        transition: Transition.fadeIn,
        page: () {
          return const AuthScreen();
        }),
    GetPage(
        name: forgotPasswordScreen,
        transition: Transition.fadeIn,
        page: () {
          return const ForgotPasswordScreen();
        }),
    GetPage(
        name: loginSuccessfulScreen,
        transition: Transition.fadeIn,
        page: () {
          return const LoginSuccessful();
        }),
    // GetPage(
    //     name: ordersScreen,
    //     transition: Transition.fadeIn,
    //     page: () {
    //       return OrdersScreen();
    //     }),
    // GetPage(
    //     name: userProductScreen,
    //     transition: Transition.fadeIn,
    //     page: () {
    //       return UserProductScreen();
    //     }),
    // GetPage(
    //     name: editProductScreen,
    //     transition: Transition.fadeIn,
    //     page: () {
    //       var pageId = Get.parameters['pageId'];
    //       return EditProductScreen(pageId: int.parse(pageId!));
    //     })
  ];
}
