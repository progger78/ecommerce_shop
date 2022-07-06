import 'package:flutter/material.dart';

import 'components/otp_screen_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification'),
      ),
      body: OtpScreenBody(),
    );
  }
}
