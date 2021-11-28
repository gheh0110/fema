
import 'package:fema/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Logout extends StatelessWidget {
  Logout({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: kPrimaryColor,
        ),
        onPressed: (){
        Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (contex) => const SignInScreen()));
        },
        child: Row(
          children: const [
            Expanded(child: Text("Log me out",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),)),
          ],
        ),
      ),
    );
  }
}
