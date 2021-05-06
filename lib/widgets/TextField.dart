import 'package:flutter/material.dart';

class textField extends StatelessWidget {
  Function onChangedValue;
  String title;
  String placeHolder;
  Icon icon;
  Icon SuffixIcon;
  TextInputType keyboradtype;
  int maxLines;

  textField(
      {this.onChangedValue,
      this.title,
      this.placeHolder,
      this.icon,
      this.SuffixIcon,
      this.keyboradtype,
      this.maxLines});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: maxLines,
        keyboardType: keyboradtype,
        onChanged: onChangedValue,
        decoration: new InputDecoration(
            labelStyle: TextStyle(color: Colors.blue),
            hintStyle: TextStyle(color: Colors.blue),
            border: new OutlineInputBorder(
                borderSide: new BorderSide(color: Colors.blue[300])),
            hintText: placeHolder,
            labelText: title,
            prefixIcon: icon,
            suffixStyle: const TextStyle(color: Colors.lightGreen)),
      ),
    );
  }
}
