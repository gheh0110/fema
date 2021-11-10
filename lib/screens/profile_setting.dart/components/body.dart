import 'package:fema/components/delete_account.dart';
import 'package:fema/screens/profile/components/diet_type.dart';
import 'package:fema/screens/profile/components/progress_chart.dart';
import 'package:fema/screens/profile/components/title.dart';
import 'package:fema/screens/profile/components/today_activity.dart';
import 'package:fema/screens/profile/components/update_weight_button.dart';
import 'package:fema/screens/profile/components/weight.dart';
import 'package:fema/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: const[
          ProfilePic(),
          TitleMenu(
            text: "MY PROFILE", 
            icon: "assets/icons/User Icon.svg"
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: ProfileSetting(),
          ),
          SizedBox(height: 20,),
          DeleteAccount(),
        ],
      ),
    );
  }
}