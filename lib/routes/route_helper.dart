import 'package:ecommerce_shop/screens/cart_screen/cart_screen.dart';
import 'package:ecommerce_shop/screens/profile_screen/profile_screen.dart';

import '/screens/detail_product_screen/detail_product_screen.dart';
import '/screens/home_screen/home_screen.dart';
import '/screens/otp_screen/otp_screen.dart';

import '/screens/complete_profile_screen/complete_profile_screen.dart';
import '/screens/forgot_password_screen/forgot_password_screen.dart';
import '/screens/login_succesfull_screen/login_successful.dart';
import '/screens/sign_up_screen/sign_up_screen.dart';
import 'package:get/get.dart';

import '../screens/sign_in_screen/auth_screen.dart';

class RouteHelper {
  static const String initialScreen = '/';

  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String signInScreen = '/sign-in-screen';
  static const String signUpScreen = '/sign-up-screen';
  static const String otpScreen = '/otp-screen';
  static const String completeProfileScreen = '/complete-profile-screen';
  static const String loginSuccessfulScreen = '/login-successful-screen';

  static const String homeScreen = '/home-screen';
  static const String detailProductScreen = '/detail-product-screen';
  static const String cartScreen = '/cart-screen';

  static const String ordersScreen = '/order-screen';
  static const String userProductScreen = '/user-product-screen';
  static const String editProductScreen = '/edit-product-screen';

  static getInitial() => initialScreen;
  static getDetailProductScreen(int pageId) =>
      '$detailProductScreen?pageId=$pageId';
  static getCartScreen() => cartScreen;
  static getOrdersScreen() => ordersScreen;
  static getCompleteProfileScreen() => completeProfileScreen;
  static getSignInScreen() => signInScreen;
  static getOtpScreen() => otpScreen;
  static getEditProductScreen(int? pageId) =>
      '$editProductScreen?pageId=$pageId';

  static List<GetPage> pages = [
    GetPage(
        name: initialScreen,
        transition: Transition.fadeIn,
        page: () {
          return const ProfileScreen();
        }),
    GetPage(
        name: signInScreen,
        transition: Transition.fadeIn,
        page: () {
          return const SignIn();
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
    GetPage(
        name: signUpScreen,
        transition: Transition.fadeIn,
        page: () {
          return const SignUpScreen();
        }),
    GetPage(
        name: completeProfileScreen,
        transition: Transition.fadeIn,
        page: () {
          return const CompletProfileScreen();
        }),
    GetPage(
        name: otpScreen,
        transition: Transition.fadeIn,
        page: () {
          return const OtpScreen();
        }),
    GetPage(
        name: homeScreen,
        transition: Transition.fadeIn,
        page: () {
          return const HomeScreen();
        }),
    GetPage(
        name: detailProductScreen,
        transition: Transition.fadeIn,
        page: () {
          var pageId = Get.parameters['pageId'];
          return DetailProductScreen(
            pageId: int.parse(pageId!),
          );
        }),
    GetPage(
        name: cartScreen,
        transition: Transition.fadeIn,
        page: () {
          return const CartScreen();
        })
  ];
}
