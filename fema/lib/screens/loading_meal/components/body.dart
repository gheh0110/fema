import 'package:flutter/material.dart';
import 'package:fema/components/default_button.dart';
import 'package:fema/screens/home/home_screen.dart';
import 'package:fema/size_config.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset(
            "assets/images/loading_meal.gif",
            height: SizeConfig.screenHeight * 0.4, //40%
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            "Fetching data...",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "Please be patient.. may take up to minute ",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const Spacer(),
          Image.asset(
            "assets/images/loading_dot.gif",
            height: SizeConfig.screenHeight * 0.1, //40%
          ),
        ],
      ),
    );
  }
}
