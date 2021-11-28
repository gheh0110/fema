import 'package:flutter/material.dart';

import 'components/body.dart';

class LoadingMeal extends StatelessWidget {
  static String routeName = "/loading_meal";

  const LoadingMeal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: const Text("Loading"),
      ),
      body: Body(),
    );
  }
}
