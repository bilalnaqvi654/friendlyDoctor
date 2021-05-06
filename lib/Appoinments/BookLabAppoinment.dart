import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/Stream%20Builders/MylabAppointments.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/TextField.dart';

class BookLabAppointment extends StatefulWidget {
  final String labName;
  BookLabAppointment({this.labName});
  @override
  _BookLabAppointmentState createState() => _BookLabAppointmentState();
}

class _BookLabAppointmentState extends State<BookLabAppointment> {
  String patientName;

  String age;

  String blood;

  String weight;

  String testDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appoinment Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24.0,
            ),
            textField(
              title: 'Your Name',
              placeHolder: 'Enter Your Name',
              icon: Icon(Icons.person),
              keyboradtype: TextInputType.text,
              maxLines: 1,
              onChangedValue: (val) {
                patientName = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Age',
              placeHolder: 'Enter your Age',
              icon: Icon(Icons.person),
              keyboradtype: TextInputType.number,
              maxLines: 1,
              onChangedValue: (val) {
                age = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Blood Group',
              placeHolder: 'Enter Your blood group',
              icon: Icon(Icons.pin_drop),
              keyboradtype: TextInputType.text,
              maxLines: 1,
              onChangedValue: (val) {
                blood = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Weight',
              placeHolder: 'Enter your Weight',
              icon: Icon(Icons.backpack),
              keyboradtype: TextInputType.number,
              maxLines: 1,
              onChangedValue: (val) {
                weight = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Test Details',
              placeHolder: 'Enter Test Details',
              icon: Icon(Icons.details),
              keyboradtype: TextInputType.text,
              maxLines: 3,
              onChangedValue: (val) {
                testDetails = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            buttonWidget(
              title: 'Book Appointment',
              ontap: () {
                bookLapAppointment();
              },
            )
          ],
        ),
      ),
    );
  }

  void bookLapAppointment() {
    FirebaseFirestore.instance.collection("Lab_Appointments").add({
      "LabName": "${widget.labName}",
      "patient_name": "$patientName",
      "patient_age": "$age",
      "patient_wieght": "$weight",
      "patient_email": "$userEmail",
      "patient_bloodgroup": "$blood",
      "test_Details": "$testDetails",
      "status": "pending",
      "day_of_appointment": "not assigned",
      "time_of_test": "not assigned",
    }).then((_) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MyLabAppointments()));
    });
  }
}
