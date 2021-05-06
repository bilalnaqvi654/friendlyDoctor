import 'package:flutter/material.dart';
import 'package:medic/Stream%20Builders/Prescribtion.dart';
import '../widgets/HospitalList.dart';
import '../widgets/contact_Us.dart';

import '../appointments_stats.dart';
import 'Are_You_doctor.dart';
import 'ChangeLocation.dart';
import 'LoginScreen.dart';
import '../Screens/myShare.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: double.infinity,
          height: 150,
          child: Stack(
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("FD",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  Text("Friendly Doctor",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ))
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Log in       ")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChangeLocation()));
                },
                child: Text("Change Location")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Appointment_Stats()));
                },
                child: Text("Appointment Stats")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => hospitalList()));
                },
                child: Text("List of Hospitals")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Prescribtion()));
                },
                child: Text("My Prescriptions")),
            //SizedBox(height: 1.0,),

            FlatButton(onPressed: () {}, child: Text("Health Forum")),
            //SizedBox(height: 1.0,),

            FlatButton(onPressed: () {}, child: Text("Health Blog")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
                child: Text("Contact Us")),
            //SizedBox(height: 1.0,),

            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyShare()));
                },
                child: Text("Share     ")),
          ],
        ),
      ],
    ));
  }
}
