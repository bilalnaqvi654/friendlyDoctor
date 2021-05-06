import 'package:flutter/material.dart';

class NeueCard extends StatelessWidget {
  final myIcon;
  final myTitle;
  final mySubTitle;

  const NeueCard({Key key, this.myIcon, this.myTitle, this.mySubTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(myIcon),
              SizedBox(
                height: 5,
              ),
              Text(
                myTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                mySubTitle,
                style: TextStyle(fontSize: 10.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
