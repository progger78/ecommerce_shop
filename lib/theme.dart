import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/utils.dart';

ThemeData theme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      inputDecorationTheme: inputDecoration(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.kPrimaryColor,
          secondary: AppColors.kSecondaryColor));
}

InputDecorationTheme inputDecoration() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: AppColors.kTextColor),
      borderRadius: BorderRadius.circular(Dimensions.radius25),
      gapPadding: Dimensions.width15);
  return InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(
        horizontal: Dimensions.width25 + 10, vertical: Dimensions.height20),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
      bodyText1: TextStyle(color: AppColors.kTextColor),
      bodyText2: TextStyle(color: AppColors.kTextColor));
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      elevation: 0,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      toolbarTextStyle: TextTheme(
        headline6:
            TextStyle(color: AppColors.kTextColor, fontSize: Dimensions.font22),
      ).bodyText2,
      titleTextStyle: TextTheme(
        headline6:
            TextStyle(color: AppColors.kTextColor, fontSize: Dimensions.font22),
      ).headline6);
}
