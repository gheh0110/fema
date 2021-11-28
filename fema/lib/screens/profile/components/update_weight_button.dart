import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


TextEditingController _textFieldController = TextEditingController();

class UpdateWeight extends StatelessWidget {
  const UpdateWeight({Key? key}) : super(key: key);

  
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
                "assets/icons/weight.svg",
                color: kPrimaryColor,
                width: 22,
              ),
              const SizedBox(width: 20),
              const Expanded(
                child: Text(
                  "Update Current Weight",
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
          return AlertDialog(
            title: const Center(
              child: Text(
                'Current Weight',
                style: TextStyle(
                  color: kPrimaryColor
                ),
                ),
              ),
            content: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.go,
              keyboardType: const TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                hintText: "Enter your weight",
                
                ),
              textAlign: TextAlign.center,
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
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              )
            ],
          );
        });
  }
}
