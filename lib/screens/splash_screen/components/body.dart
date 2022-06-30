import 'package:ecommerce_shop/routes/route_helper.dart';
import 'package:ecommerce_shop/utils/utils.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/default_button.dart';
import 'splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _currentPage = 0;
  final List<Map<String, String>> _splashData = [
    {
      'text': 'Welcome to our Tokoto shop, have a great day!',
      'image': 'assets/images/splash_1.png',
    },
    {
      'text': 'There are lots of great products waiting for you!',
      'image': 'assets/images/splash_2.png',
    },
    {
      'text':
          'We try our best to provide high quality and fast delivery to your needs !',
      'image': 'assets/images/splash_3.png',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _currentPage = value;
                    });
                  },
                  itemCount: _splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        text: _splashData[index]['text']!,
                        image: _splashData[index]['image']!,
                      )),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _splashData.length, (index) => buildDot(index)),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  DefaultButton(
                    text: 'Continue',
                    press: () {Get.toNamed(RouteHelper.getAuthScreen());},
                  ),
                  const Spacer()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(index) {
    return AnimatedContainer(
      duration: defaultDuration,
      margin: EdgeInsets.all(Dimensions.height5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius15 - 10),
        color: _currentPage == index
            ? AppColors.kPrimaryColor
            : AppColors.kTextColor,
      ),
      height: Dimensions.height10 - 2,
      width:
          _currentPage == index ? Dimensions.width15 : Dimensions.width10 - 2,
    );
  }
}
