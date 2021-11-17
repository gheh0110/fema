import 'package:fema/models/Breakfast.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BreakfastIngredient extends StatefulWidget {
  const BreakfastIngredient({
    Key? key,
    required this.breakfast,
  }) : super(key: key);

  final Breakfast breakfast;

  @override
  _BreakfastIngredientState createState() => _BreakfastIngredientState();
}

class _BreakfastIngredientState extends State<BreakfastIngredient> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
          children: widget.breakfast.ingredients.map((path) {
            return Text(
              "- " +path,
            );
          }).toList(),
      ),
    );
  }
}
