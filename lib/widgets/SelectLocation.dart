import 'package:flutter/material.dart';

class CityName extends StatelessWidget {
  final cityName;
  final myFunction;

  const CityName({this.cityName,this.myFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cityName,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal),
              ),
              IconButton(
                  icon: Icon(Icons.arrow_forward_ios,
                      size: 20.0, color: Colors.greenAccent),
                  onPressed: myFunction),
            
            ],
          ),
        ),

      Divider(height: 0.0, color: Colors.grey[400]),
      ],
    );
  }
}
