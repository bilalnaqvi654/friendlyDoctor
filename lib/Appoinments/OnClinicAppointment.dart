import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:medic/Appoinments/AppoinmentOverView.dart';
import 'package:medic/Global.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/TextField.dart';

class OnclinicAppoinmet extends StatefulWidget {
  @override
  _OnclinicAppoinmetState createState() => _OnclinicAppoinmetState();
}

class _OnclinicAppoinmetState extends State<OnclinicAppoinmet> {
  String patientName;
  String disease;
  String phoneNumber;
  String perviousRecord;
  String day = "Not assigned yet";

  var appointmentref = FirebaseFirestore.instance;
  int noappt;
  int numbeOFPointment = 1;
  final FirebaseMessaging fcm = FirebaseMessaging.instance;
  String token;
  void GetToken() async {
    token = await fcm.getToken();
  }

  @override
  void initState() {
    super.initState();
    GetToken();
    print(token);
  }

  void addAppointment() {
    appointmentref.collection('Appoinments').add({
      "Name": "$patientName",
      "Day": "not assigned yet",
      "Problem": "$disease",
      "PreviousRecord": "$perviousRecord",
      "Time": "not assigned",
      "No of AppoinMents": numbeOFPointment,
      "Docotrs_Email": "$DoctorEmail",
      "status": "pending",
      "DoctorName": "$doctorName",
      "userEmail": "$userEmail",
      "Token": "$token",
    }).then((_) {
      // getData();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => AppoinmentOverVire(
                    day: day,
                    doctorName: doctorName,
                    disease: disease,
                  )));
    });
  }

  DocumentReference snapshot;
  // void getData() async {
  //   //use a Async-await function to get the data
  //   final data = await FirebaseFirestore.instance
  //       .collection("Appoinments")
  //       .doc()
  //       .collection('$day')
  //       .doc();
  //   //get the data
  //   snapshot = data;
  //   noappt = snapshot.data()['No of AppoinMents'];
  //   print(noappt);
  // }

  @override
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Book Your Appointment'),
        actions: [IconButton(icon: Icon(Icons.home), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Name',
              placeHolder: 'Enter Your Name',
              icon: Icon(Icons.person),
              onChangedValue: (val) {
                patientName = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Problem ',
              placeHolder: 'Describe your problem ',
              maxLines: 5,
              icon: Icon(Icons.report_problem),
              onChangedValue: (val) {
                disease = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Phone Number ',
              placeHolder: 'Enter Your phoneNumber ',
              keyboradtype: TextInputType.number,
              icon: Icon(Icons.phone),
              onChangedValue: (val) {
                phoneNumber = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            textField(
              title: 'Pervious Record',
              placeHolder: 'Enter Your Previous Record ',
              maxLines: 5,
              icon: Icon(Icons.history),
              onChangedValue: (val) {
                perviousRecord = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            buttonWidget(
              title: 'Book Appointment',
              ontap: () async {
                await addAppointment();
              },
            )
          ],
        ),
      ),
    );
  }
}
