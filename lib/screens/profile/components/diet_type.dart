import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class DietType extends StatelessWidget {
  const DietType({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: const EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed:(){},
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/meal1.svg",
              color: kPrimaryColor,
              width: 30,
            ),
            const SizedBox(width: 1),
            Expanded(child: Column(
              children: const [
                Text("Vegetarian",
                  style: TextStyle(
                    fontSize: 16, 
                  ),
                ),
                Text("Diet",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 12, 
                    ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
