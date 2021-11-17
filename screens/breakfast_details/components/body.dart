import 'package:fema/components/default_button.dart';
import 'package:fema/models/Breakfast.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'breakfast_description.dart';
import 'breakfast_images.dart';
import 'breakfast_ingredients.dart';
import 'section_title.dart';
import 'top_rounderd_container.dart';


class Body extends StatelessWidget {
  final Breakfast breakfast;

  const Body({Key? key, required this.breakfast}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BreakfastImages(breakfast: breakfast),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              BreakfastDescription(
                breakfast: breakfast,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: const Color(0xFFF6F7F9),
                child: Column(
                  children: [
                    TopRoundedContainer(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: DefaultButton(
                          text: "ADD TO MEAL",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
            ],
          ),
        ),
      ],
    );
  }
}
