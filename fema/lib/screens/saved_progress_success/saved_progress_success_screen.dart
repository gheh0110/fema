import 'package:flutter/material.dart';

import 'components/body.dart';

class SavedProgressSuccessScreen extends StatelessWidget {
  static String routeName = "/saved_progress_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Saved Progress Success"),
      ),
      body: Body(),
    );
  }
}
