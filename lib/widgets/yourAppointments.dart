import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class YourAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Row(
            children: [
              Icon(Icons.calendar_today, color: Colors.lightBlueAccent),
              SizedBox(width: 20.0),
              Text("Your Appointments",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent)),
              Expanded(
                child: SizedBox(width: 20),
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green))),
                  Icon(Icons.arrow_forward_ios, color: Colors.black54),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
