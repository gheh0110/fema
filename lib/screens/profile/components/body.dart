import 'package:fema/screens/profile/components/diet_type.dart';
import 'package:fema/screens/profile/components/progress_chart.dart';
import 'package:fema/screens/profile/components/title.dart';
import 'package:fema/screens/profile/components/today_activity.dart';
import 'package:fema/screens/profile/components/update_weight_button.dart';
import 'package:fema/screens/profile/components/weight.dart';
import 'package:fema/screens/profile/components/profile_pic.dart';
import 'package:flutter/material.dart';

import 'height.dart';
import 'profile_menu.dart';
import 'title_profile.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children:  [
          const ProfilePic(),
          TitleProfile(),
          const SizedBox(height: 20),
          Row(
            children: [
              const Expanded(child: DietType()),
              Expanded(child: Height()),
            ]
          ),
          Weight(),
          const UpdateWeight(),
          const TitleMenu(
            text: "PROGRESS", 
            icon: "assets/icons/progress.svg"
          ),

          const ProgressData(),
          ProfileMenu(
            text: "Add Activity", 
            icon: "assets/icons/add.svg",
            press: (){},
          ),

          ProfileMenu(
            text: "Browse Meal", 
            icon: "assets/icons/meal1.svg",
            press: (){},
          ),

          ProfileMenu(
            text: "Browse Workout", 
            icon: "assets/icons/workout1.svg",
            press: (){},
          ),

          const TitleMenu(
            text: "ACTIVITY TODAY", 
            icon: "assets/icons/progress.svg"
          ),
          TodayActivity()
        ],
      ),
    );
  }
}
