// ignore_for_file: must_be_immutable

import 'package:fema/helper/database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';


class Calorie extends StatefulWidget {
  const Calorie({Key? key}) : super(key: key);

  @override
  _CalorieState createState() => _CalorieState();
}

class _CalorieState extends State<Calorie> {
  final _formKey = GlobalKey<FormState>();

  String goal= "1000";
  String alert="";
  String remaining ="";

  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  late DbHelper dbHelper;

  int? _total;
  int? _workout;
  

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
    _calcCalorieTotal();
    _calcWorkoutTotal();
  }

  void _calcCalorieTotal() async{
    var total = (await dbHelper.calcCalorieTotal())[0]['total'];
    print(total);
    setState(() => _total = total);
  }

  void _calcWorkoutTotal() async{
    var workout = (await dbHelper.calcWorkoutTotal())[0]['total'];
    print(workout);
    setState(() => _workout = workout);
  }
  
  @override
  Widget build(BuildContext context) {
      var total = _total?.toInt() ?? 0;
      var work = _workout?.toInt() ?? 0;
      int resulttext = int.parse(goal) - (total + work);
      remaining = resulttext.toString();
      if(resulttext<=0){
        remaining = "0";
      }
      if(resulttext<=900){
          print("Yey! We're now on progress!");
          alert="Yey! We're now on progress!";
        }
      if(resulttext<=500){
          print("Keep it up! Your nearly in your goal today!");
          alert="Keep it up! Your nearly in your goal today!";    
        }
      if(resulttext<=0){
          print("Congratulations! You've already reach your goal today!");
          alert="Congratulations! You've already reach your goal today!"; 
        }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.grey[200]
            ),
            height: 100,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              ),
              onPressed: (){},
              child: Form(
                key: _formKey,
                child: Column(
                  
                  children: [
                    Row(
                      children: [
                        Expanded(child: 
                          Column(
                            children: [
                              const Text("Goal Today",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text(goal + " cal",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: kPrimaryColor, 
                                  ),
                              ),
                            ],
                          ),
                        ),
              
                        Expanded(child: 
                          Column(
                            children: [
                              const Text("Meal",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('${_total ?? "0"}' " cal",
                                style: const TextStyle(
                                  fontSize: 18, 
                                  color: kPrimaryColor,
                                  ),
                              ),
                            ],
                          ),
                        ),
              
                        Expanded(child: 
                          Column(
                            children: [
                              const Text("Workout",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38, 
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text('${_workout ?? "0"}' " cal",
                                style: const TextStyle(
                                  fontSize: 16, 
                                  color: kPrimaryColor,
                                  ),
                              ),
                            ],
                          ),
                        ),
              
                        Expanded(child: 
                          Column(
                            children: [
                              const Text("Remaining",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black38,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text(remaining+  " cal",
                                style: const TextStyle(
                                  fontSize: 16, 
                                  color: kPrimaryColor,
                                  ),
                              ),
                            ],
                          ),
                        ),
              
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(alert),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
