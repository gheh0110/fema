import 'package:flutter/material.dart';

import '../../models/Breakfast.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart'; 

class BreakfastDetailsScreen extends StatelessWidget {
  static String routeName = "/breakfast_details_screen";

  const BreakfastDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BreakfastDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as BreakfastDetailsArguments;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.breakfast.rating),
      ),
      body: Body(breakfast: agrs.breakfast),
    );
  }
}

class BreakfastDetailsArguments {
  final Breakfast breakfast;

  BreakfastDetailsArguments({required this.breakfast});
}
