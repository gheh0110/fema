import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';



class Height extends StatelessWidget {

  String height = "0";
  String icon = "assets/icons/height.svg";

  Height({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kPrimaryColor,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: (){},
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 30,
            ),
            const SizedBox(width: 1),
            Expanded(child: Column(
              children: [
                Text(height + " cm",
                  style: const TextStyle(
                    fontSize: 16, 
                    fontWeight: FontWeight.w800
                  ),
                ),
                const Text("Height",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                    color: Colors.black38, 
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
