import 'package:flutter/material.dart';
import 'package:fema/size_config.dart';
import 'components/body.dart';

class AboutYouScreen extends StatelessWidget {
  static String routeName = "/about_you";

  const AboutYouScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("About You"),
      ),
      body: Body(),
    );
  }
}
