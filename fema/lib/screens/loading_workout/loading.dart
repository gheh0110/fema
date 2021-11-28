import 'package:flutter/material.dart';

import 'components/body.dart';

class LoadingWorkout extends StatelessWidget {
  static String routeName = "/loading_workout";

  const LoadingWorkout({Key? key}) : super(key: key);
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
