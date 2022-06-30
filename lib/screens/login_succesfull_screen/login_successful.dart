
import 'package:flutter/material.dart';

import 'components/success_log_body.dart';

class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Login Successful'), automaticallyImplyLeading: false,),
      body: const SuccessLogBody()
    );
  }
}
