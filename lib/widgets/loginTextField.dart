import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onChangedValue;
  final TextInputType keyboradtype;
  final bool obsecure;
  final String placeHolder;
  LoginTextField(
      {this.title,
      this.icon,
      this.onChangedValue,
      this.keyboradtype,
      this.obsecure,
      this.placeHolder});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obsecure,
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
