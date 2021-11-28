import 'package:fema/components/custom_surfix_icon.dart';
import 'package:fema/helper/database.dart';
import 'package:fema/helper/validator.dart';
import 'package:fema/models/calories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../home_screen.dart';

DateTime now = DateTime.now();
String todayDate = DateFormat('yyyy-MM-dd').format(now);


class Snack extends StatefulWidget {
  const Snack({Key? key}) : super(key: key);

   @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<Snack> {
final _formKey = GlobalKey<FormState>();
final _conCalId = TextEditingController();
final _conCategory = "Meal";
final _conSubCat = "Snack";
final _conTitle = TextEditingController();
final _conCal = TextEditingController();
final _conAlarm = TextEditingController();
final _conAddedOn = todayDate;

var dbHelper;
@override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }
  
  saveCal() async {
    String cid = _conCalId.text;
    String category=_conCategory;
    String sub_cat =_conSubCat;
    String title = _conTitle.text;
    String cal = _conCal.text;
    String alarm = _conAlarm.text;
    String added_on = _conAddedOn;
    
    if (_formKey.currentState!.validate()) {
      if (cid.isEmpty) {
        alertDialog(context, 'Please input ID');
      } else {
        _formKey.currentState!.save();

        Calories cModel = Calories(cid,category,sub_cat,title,cal,alarm,added_on);
        await dbHelper.saveDataCalories(cModel).then((caloriesData) {
          alertDialog(context, "Successfully Saved");
          print(todayDate);

          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        }).catchError((error) {
          print(error);
          alertDialog(context, "Error: Data Save Fail");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: kPrimaryColor,
            padding: const EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: const Color(0xFFF5F6F9),
          ),
          onPressed: (){ _displayDialog(context);},
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/add.svg",
                color: kPrimaryColor,
                width: 22,
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  "Add snack",
                  textAlign: TextAlign.center,
                ),
                
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ),
    );
  }

    _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return Form(
            key: _formKey,
            child: AlertDialog(
              title: const Center(
                child: Text(
                  'Add Todays Snack',
                  style: TextStyle(
                    color: kPrimaryColor
                  ),
                  ),
                ),
              content: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    TextField(
                          obscureText: false,
                          controller: _conCalId,
                          decoration: const InputDecoration(
                            labelText: "ID",
                            hintText: "Enter snack id",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                          ),
                        ),
                    const SizedBox(height: 10),
                    TextField(
                          obscureText: false,
                          controller: _conTitle,
                          decoration: const InputDecoration(
                            labelText: "Food name",
                            hintText: "Enter food name",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                          ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                          obscureText: false,
                          controller: _conCal,
                          decoration: const InputDecoration(
                            labelText: "Calories",
                            hintText: "Enter calories",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                          ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                          obscureText: false,
                          controller: _conAlarm,
                          decoration: const InputDecoration(
                            labelText: "Alarm",
                            hintText: "Enter time",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
                          ),
                    ),
                    const SizedBox(height: 10),      
                  ],
                ),
              ),
              actions: <Widget>[
                Center(
                  child: Container(
                    width: 150,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    color: kPrimaryColor,
                  ),
                    child: TextButton(
                      child: const Text('Submit',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ), 
                      ),
                      onPressed: saveCal,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
