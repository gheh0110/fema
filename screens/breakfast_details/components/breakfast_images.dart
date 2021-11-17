import 'package:flutter/material.dart';
import 'package:fema/models/Breakfast.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class BreakfastImages extends StatefulWidget {
  const BreakfastImages({
    Key? key,
    required this.breakfast,
  }) : super(key: key);

  final Breakfast breakfast;

  @override
  _BreakfastImagesState createState() => _BreakfastImagesState();
}

class _BreakfastImagesState extends State<BreakfastImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.breakfast.id.toString(),
              child: Image.asset(widget.breakfast.images[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.breakfast.images.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.breakfast.images[index]),
      ),
    );
  }
}
