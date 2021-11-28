
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../size_config.dart';
import 'breakfast.dart';
import 'button.dart';
import 'calorie.dart';
import 'banner.dart';
import 'dinner.dart';
import 'home_header.dart';
import 'lunch.dart';
import 'section_title.dart';
import 'snack.dart';
import 'workout.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat('yMMMMd').format(now);

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const TitleBanner(),
            SectionTitle(icon: "assets/icons/calendar.svg",title: "Date: "+formattedDate, ),
            const SizedBox(height: 10,),
            const SectionTitle(icon: "assets/icons/progress.svg",title: "Today's Goal",),
            const Calorie(),
            const Breakfast(),
            const Lunch(),
            const Dinner(),
            const Snack(),
            const Workout(),
            //SaveProgress(),
          ],
        ),
      ),
    );
  }
}
