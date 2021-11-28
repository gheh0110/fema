import 'package:fema/models/Breakfast.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BreakfastProcedure extends StatefulWidget {
  const BreakfastProcedure({
    Key? key,
    required this.breakfast,
  }) : super(key: key);

  final Breakfast breakfast;

  @override
  _BreakfastProcedureState createState() => _BreakfastProcedureState();
}

class _BreakfastProcedureState extends State<BreakfastProcedure> {


  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
            children: widget.breakfast.procedure.map((path) {
              return Text(
                "- " +path,
                textAlign: TextAlign.justify,
              );
            }).toList(),
      ),
    );
  }
}
