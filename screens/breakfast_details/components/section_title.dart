import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w900,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}