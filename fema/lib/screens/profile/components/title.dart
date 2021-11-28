import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text, icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: kPrimaryColor,
              width: 24,
            ),
            const SizedBox(width: 10),
            Expanded(child: Text(text,style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),)),
          ],
        ),
    );
  }
}
