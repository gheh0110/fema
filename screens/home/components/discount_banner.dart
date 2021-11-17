import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

User? user = FirebaseAuth.instance.currentUser;

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
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
            const TextSpan(text: "Best for you" " {user.displayname}\n"),
            TextSpan(
              text: "FEMA choose it for you",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(24),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
