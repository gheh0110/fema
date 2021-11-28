import 'package:flutter/material.dart';
import 'package:fema/components/coustom_bottom_nav_bar.dart';
import 'package:fema/enums.dart';

import '../../size_config.dart';
import 'components/body.dart';

class MealPlannerScreen extends StatelessWidget {
  static String routeName = "/meal_planner";

  const MealPlannerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.mealPlanner),
    );
  }
}
