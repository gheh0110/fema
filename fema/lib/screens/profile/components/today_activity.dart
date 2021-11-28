// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class TodayActivity extends StatelessWidget {

  String workout= "null";
  String calorieBurned= "null";
  String calorieIntake = "null";

  TodayActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                padding:  const EdgeInsets.all(20),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: (){},
              child: Row(
                children: [
                   const SizedBox(width: 1),
                  Expanded(child: 
                    Container(
                      padding:  const EdgeInsetsDirectional.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kPrimaryColor,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/workout.svg",
                            color: Colors.white,
                            width: 22,
                          ),

                           const SizedBox(height: 5),
                          
                            const Text("WORKOUT",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Text(workout,
                            style:  const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white, 
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                   const SizedBox(width: 5,),
                  
                  Expanded(child: 
                    Container(
                      padding:  const EdgeInsetsDirectional.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kPrimaryColor,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/workout_burned.svg",
                            color: Colors.white,
                            width: 22,
                          ),

                           const SizedBox(height: 5),

                           const Text("BURNED",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Text(calorieBurned + " cal",
                            style:  const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18, 
                              color: Colors.white,
                              ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 5,),

                  Expanded(child: 
                    Container(
                      padding:  const EdgeInsetsDirectional.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: kPrimaryColor,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/meal2.svg",
                            color: Colors.white,
                            width: 22,
                          ),

                          const SizedBox(height: 5),

                          const Text("INTAKE",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white, 
                            ),
                          ),
                          Text(calorieIntake + " cal",
                            style:  const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18, 
                              color: Colors.white,
                              ),
                          ),
                        ],
                      ),
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
