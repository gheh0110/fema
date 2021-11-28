import 'package:flutter/material.dart';
import 'package:fema/size_config.dart';
import 'components/body.dart';

class AboutScreen extends StatelessWidget {
  static String routeName = "/about";

  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("About You"),
      ),
      body: const Body(),
    );
  }
}
