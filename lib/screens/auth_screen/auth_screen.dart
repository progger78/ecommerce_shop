import 'package:ecommerce_shop/screens/auth_screen/components/auth_body.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Sign In'),),
      body: const AuthBody(),);
  }
}