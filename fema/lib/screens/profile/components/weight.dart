// ignore_for_file: must_be_immutable

import 'package:fema/models/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


class Weight extends StatelessWidget {

  String before= "null";
  String current= "null";
  String change = "0";

  Weight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      //int resulttext = int.parse(before) - int.parse(current);
      //change = resulttext.toString();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kPrimaryColor,
            ),
            height: 80,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: (){},
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/weight.svg",
                    color: Colors.white,
                    width: 22,
                  ),
                  const SizedBox(width: 1),
                  Expanded(child: 
                    Column(
                      children: [
                        const Text("BEFORE",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                        ),
                        Text(before + " kg",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white, 
                            ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(child: 
                    Column(
                      children: [
                        const Text("CURRENT",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                        ),
                        Text(current + " kg",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18, 
                            color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(child: 
                    Column(
                      children: [
                        const Text("CHANGE",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54, 
                          ),
                        ),
                        Text(change + " kg",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16, 
                            color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
