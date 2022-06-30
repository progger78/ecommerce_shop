import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class AppSmallText extends StatelessWidget {
  const AppSmallText({
    Key? key,
    required this.text,
    this.color = AppColors.kTextColor,
    this.size,
    this.height = 1.6,
    this.textAlign,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? size;
  final double height;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.lato(
        fontSize: size ?? Dimensions.font16,
        color: color,
        height: height,
      ),
    );
  }
}
