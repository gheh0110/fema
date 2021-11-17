// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:fema/helper/db_helper.dart';
import 'package:fema/models/users.dart';
import 'package:fema/screens/complete_details_success/complete_details_success_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fema/components/custom_surfix_icon.dart';
import 'package:fema/components/default_button.dart';
import 'package:fema/components/form_error.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class AboutYouForm extends StatefulWidget {
  const AboutYouForm({Key? key}) : super(key: key);

  @override
  _AboutYouFormState createState() => _AboutYouFormState();
}

class _AboutYouFormState extends State<AboutYouForm> {

// gender
  List<String> genderList = [
    'Male',
    'Female',
  ];

  setFilters() {
    setState(() {
      gender = genderList[2];
      goal = goalList[2];
    });
  }

//goal 
  List<String> goalList = [
    'Lose Weight',
    'Stay Toned',
    'Build Muscle',
  ];

//perweek workout
  List<String> perWeekWorkoutList = [
    '2-3 times (5-10mins)',
    '2-3 times (15-20mins)',
    '2-3 times (25+ mins)',
    '4-5 times (5-10mins)',
    '4-5 times (15 - 20 mins)',
    '4-5 times (25+ mins)',
    '5+ times (5-10mins)',
    '5+ times (15 - 20 mins)',
    '5+ times (25+ mins)',
  ];

//meal plan
  List<String> meal_planList = [
    '2 meals',
    '3 meals',
    '3 meals + 1 Snack',
    '3 meals + 2 Snack',
  ];

//meal category
  List<String> meal_categoryList = [
    'Standard',
    'Pescetarian',
    'Vegetarian',
    'Vegan',
  ];

  User? user = FirebaseAuth.instance.currentUser;
  //final dbRef = FirebaseDatabase(databaseURL: 'https://fema-0103-default-rtdb.asia-southeast1.firebasedatabase.app/').reference().child("userInfo/");
final scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  Userdata userdata = Userdata("", "", "", "", "", "", "", "", "",);

  String? gender;
  DateTime? birthdate;
  String? height;
  String? weight;
  String? goal;
  String? workout_per_week;
  String? how_many_weeks;
  String? meal_plan;
  String? meal_category;
  bool isloading = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildGenderFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBirthdateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildHeightFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildGoalFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildWorkoutPerWeekFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildHowManyWeeksFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMealPlanFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildMealCategoryFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Done",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _submit;

                Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (contex) => const CompleteDetailsSuccessScreen()));

 
              }
            },
          ),
        ],
      ),
    );
  }

  DropdownButtonFormField buildGenderFormField() {
    return DropdownButtonFormField(
      decoration: const InputDecoration(
        fillColor: Colors.white,
        filled: true,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/gender.svg"),
        labelText: "Gender",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: "Select Gender",
      ),
            validator: (value) => value == null
                    ? kGenderNullError : null,
      onSaved: (newValue) => gender = newValue,
      onChanged: (value) {
        setState(() {
          gender = value;
        });
      },
      items: genderList
        .map((genderTitle) => DropdownMenuItem(
        value: genderTitle, child: Text(genderTitle)))
        .toList(),
    );
  }

  DateTimeField buildBirthdateFormField() {
    return DateTimeField(
        format: DateFormat("yyyy-MM-dd"),
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100),
          );
        },
      decoration: const InputDecoration(
        labelText: "Birthdate",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Click to view calendar",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/calendar.svg"),
      ),
      onSaved: (newValue) => birthdate = newValue,
        onChanged: (date) {
            setState(() {
              birthdate = date!;
            });
          }
      );
  }

  Row buildHeightFormField() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: TextInputType.number,
            onSaved: (newValue) => height = newValue,
            onChanged: (value) {
              height = value;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: kHeightNullError);
                return "";
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: "Height (cm)",
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              hintText: "cm",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/height.svg"),
            ),
          ),
        ),

        const SizedBox(width: 10,),

        Expanded(
          child: TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (newValue) => weight = newValue,
              onChanged: (value) {
                weight = value;
              },
              validator: (value) {
          if (value!.isEmpty) {
            addError(error: kWeightNullError);
            return "";
          }
          return null;
              },
              decoration: const InputDecoration(
          labelText: "Weight (kg)",
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          hintText: "kg",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/weight.svg"),
              ),
            ),
        )
      ],
    );
  }

  DropdownButtonFormField buildGoalFormField() {
    return DropdownButtonFormField(
            validator: (value) => value == null
                    ? kGoalNullError : null,
           onSaved: (newValue) => goal = newValue,         
      onChanged: (value) {
        setState(() {
          goal = value;
        });
      },
      decoration: const InputDecoration(
        labelText: "Goal",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Select your goal",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/goal.svg"),
      ),
      items: goalList
        .map((goalTitle) => DropdownMenuItem(
        value: goalTitle, child: Text(goalTitle)))
        .toList(),
    );
  }

  DropdownButtonFormField buildWorkoutPerWeekFormField() {
    return DropdownButtonFormField(
      validator: (value) => value == null
                    ? kPerWeekWorkoutNullError : null,
      onSaved: (newValue) => workout_per_week = newValue,
      onChanged: (value) {
        setState(() {
          workout_per_week = value;
        });
      },
      decoration: const InputDecoration(
        labelText: "How many times in a week your gonna workout?",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Select your time for workout",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/time.svg"),
      ),
      items: perWeekWorkoutList
        .map((work_out_per_weekTitle) => DropdownMenuItem(
        value: work_out_per_weekTitle, child: Text(work_out_per_weekTitle)))
        .toList(),
    );
  }


  TextFormField buildHowManyWeeksFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => how_many_weeks = newValue,
      onChanged: (value) {
        how_many_weeks = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kHowManyWeeksNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "How many weeks will you workout?",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Input the number of weeks",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/calendar_add.svg"),
      ),
    );
  }

  DropdownButtonFormField buildMealPlanFormField() {
    return DropdownButtonFormField(
      validator: (value) => value == null
                    ? kMealPlanNullError : null,
              onSaved: (newValue) => meal_plan = newValue,      
      onChanged: (value) {
        setState(() {
          meal_plan = value;
        });
      },
      decoration: const InputDecoration(
        labelText: "How many times  you plan to eat?",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Choose your meal plan",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/meal_time.svg"),
      ),
      items: meal_planList
        .map((meal_planTitle) => DropdownMenuItem(
        value: meal_planTitle, child: Text(meal_planTitle)))
        .toList(),
    );
  }

  DropdownButtonFormField buildMealCategoryFormField() {
    return DropdownButtonFormField(
      validator: (value) => value == null
                    ? kMealPlanNullError : null,
          onSaved: (newValue) => meal_category = newValue,
      onChanged: (value) {
        setState(() {
          meal_category = value;
        });
      },
      decoration: const InputDecoration(
        labelText: "What type of food you eat?",
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        hintText: "Choose your category",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/meal_category.svg"),
      ),
      items: meal_categoryList
        .map((meal_categoryTitle) => DropdownMenuItem(
        value: meal_categoryTitle, child: Text(meal_categoryTitle)))
        .toList(),
    );
  }

    void _submit() {
    var userdata = Userdata(gender!, birthdate.toString(), height!, weight!, goal!,workout_per_week!, meal_plan!, how_many_weeks!, meal_category!);
    var dbHelper = DBHelper();
    dbHelper.saveUserdata(userdata);
  }

}
