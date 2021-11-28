import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fema/models/Breakfast.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'breakfast_ingredients.dart';
import 'breakfast_natural_facts.dart';
import 'breakfast_procedure.dart';
import 'section_title.dart';

class BreakfastDescription extends StatelessWidget {
  const BreakfastDescription({
    Key? key,
    required this.breakfast,
    this.pressOnSeeMore,
  }) : super(key: key);

  final Breakfast breakfast;
  final GestureTapCallback? pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            breakfast.title + " (" + breakfast.calories + "cal)",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "Serving : " + breakfast.serving.toString(),
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "Preperation : " + breakfast.time.toString() + " mins",
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 16,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            width: getProportionateScreenWidth(64),
            decoration: BoxDecoration(
              color:
                  breakfast.isFavorite ? const Color(0xFFFFE6E6) : const  Color(0xFFF5F6F9),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:
                  breakfast.isFavorite ? const Color(0xFFFF4848) : const Color(0xFFDBDEE4),
              height: getProportionateScreenWidth(16),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            breakfast.description,
            maxLines: 3,
          ),
        ),

        const SectionTitle(
          title: "INGREDIENTS"
          ),
        BreakfastIngredient(breakfast: breakfast),

        const SectionTitle(
          title: "PREPERATION"
          ), 

        BreakfastProcedure(breakfast: breakfast),

        const SectionTitle(
          title: "NATURAL FACTS"
          ), 

        BreakfastNaturalFacts(breakfast: breakfast), 

        
      ],
    );
  }
}
