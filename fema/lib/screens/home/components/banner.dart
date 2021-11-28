
import 'package:fema/helper/database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

 

class TitleBanner extends StatefulWidget {
  const TitleBanner({Key? key}) : super(key: key);

  @override
  _TtitleBannerState createState() => _TtitleBannerState();
}

class _TtitleBannerState extends State<TitleBanner>{
  final _formKey = GlobalKey<FormState>();
  final Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  late DbHelper dbHelper;
  String? _name;
  


  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
    _getName();
  }

  void _getName() async{
    var name = (await dbHelper.getName())[0];
    print(name);
    setState(() => _name = name.toString());
  } 



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        // height: 90,
        width: double.infinity,
        margin: EdgeInsets.all(getProportionateScreenWidth(20)),
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15),
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text.rich(
          TextSpan(
            style: const TextStyle(color: Colors.white),
            children: [
              TextSpan(text: "Hi $_name \n"),
              TextSpan(
                text: "Welcome to FEMA",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(24),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
