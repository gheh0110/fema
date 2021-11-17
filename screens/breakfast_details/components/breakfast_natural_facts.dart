import 'package:fema/models/Breakfast.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BreakfastNaturalFacts extends StatefulWidget {
  const BreakfastNaturalFacts({
    Key? key,
    required this.breakfast,
  }) : super(key: key);

  final Breakfast breakfast;

  @override
  _BreakfastNaturalFactsState createState() => _BreakfastNaturalFactsState();
}

class _BreakfastNaturalFactsState extends State<BreakfastNaturalFacts> {


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
            children: widget.breakfast.naturalFacts.map((path) {
              return Text(
                "- " +path,
                textAlign: TextAlign.justify,
              );
            }).toList(),
      ),
    );
  }
}
