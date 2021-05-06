import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Appoinments/Appointmentcard.dart';
import 'package:medic/Global.dart';

class Myappointments extends StatefulWidget {
  @override
  _MyappointmentsState createState() => _MyappointmentsState();
}

class _MyappointmentsState extends State<Myappointments> {
  var appointment = FirebaseFirestore.instance
      .collection('Appoinments')
      .where('userEmail', isEqualTo: '$userEmail')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Appointment List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: appointment,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, int index) {
              return AppoinmentCard(snapshot: snapshot.data, index: index);
            },
          );
        },
      ),
    );
  }
}
