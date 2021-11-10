import 'package:flutter/material.dart';
import 'package:fema/constants.dart';
import 'package:fema/size_config.dart';

import 'about_you_form.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.0001), // 1%
                Text("Complete your details", style: headingStyle),
                const Text(
                  "Fill us more about you",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                const AboutYouForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.01),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
