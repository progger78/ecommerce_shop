import 'package:flutter/material.dart';

import 'components/comp_profile_scr_body.dart';

class CompletProfileScreen extends StatelessWidget {
  const CompletProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: CompletProfileScreenBody(),
    );
  }
}
