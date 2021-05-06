import 'package:flutter/material.dart';

class RadioButtonSection extends StatelessWidget {
  final groupValue;
  final value;
  final myFunction;

  RadioButtonSection({this.groupValue, this.value, this.myFunction});

  @override
  Widget build(BuildContext context) {
    //================ Radio Button
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
        child: Card(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
              child: Column(
                children: [
                  Text(
                      '''Do you want to grow your practice? (more patient leads)'''),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Radio(
                        value: value,
                        groupValue: groupValue,
                        onChanged: myFunction,
                      ),
                      Text("Yes"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Radio(
                        value: value,
                        groupValue: groupValue,
                        onChanged: myFunction,
                      ),
                      Text("No"),
                    ],
                  ),
                ],
              )),
        ));
  }
}
