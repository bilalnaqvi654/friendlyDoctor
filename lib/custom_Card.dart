import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custom_Card extends StatelessWidget {
  final title;
  final custom_Icon;
  final myFunction;

  const Custom_Card({Key key, this.title, this.custom_Icon, this.myFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(38.0),
        child: InkWell(
          onTap: myFunction,
              child: Container(
                width:10000,
            height: 50,
            color: Colors.white,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(28.0),
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                      height: 70.0,
                      width: 70.0,
                      color: Color(0xffebf7fc),
                      child: custom_Icon
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff54778c)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
