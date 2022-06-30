import 'package:ecommerce_shop/utils/dimensions.dart';
import 'package:flutter/material.dart';

import 'components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Forgot Password',),
        
      ),
      body: ForgotPasswordBody(),
    );
  }
}
