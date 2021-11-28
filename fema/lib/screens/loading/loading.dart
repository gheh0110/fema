import 'package:flutter/material.dart';

import 'components/body.dart';

class Loading extends StatelessWidget {
  static String routeName = "/loading";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Loading"),
      ),
      body: Body(),
    );
  }
}
