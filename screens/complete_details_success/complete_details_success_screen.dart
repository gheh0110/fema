import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteDetailsSuccessScreen extends StatelessWidget {
  static String routeName = "/complete_details_success";

  const CompleteDetailsSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Login Success"),
      ),
      body: const Body(),
    );
  }
}
