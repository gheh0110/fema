
import 'package:fema/screens/profile_setting.dart/profile_setting.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtn(
            svgSrc: "assets/icons/User.svg",
            press: () => Navigator.pushNamed(context, ProfileSetting.routeName),
          ),
        ],
      ),
    );
  }
}
