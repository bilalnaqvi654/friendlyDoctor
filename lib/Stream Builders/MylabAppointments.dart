import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Appoinments/MyallLabappointments.dart';

class MyLabAppointments extends StatefulWidget {
  @override
  _MyLabAppointmentsState createState() => _MyLabAppointmentsState();
}

class _MyLabAppointmentsState extends State<MyLabAppointments> {
  var searchref =
      FirebaseFirestore.instance.collection('Lab_Appointments').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Choose Speciality", style: TextStyle(color: Colors.white)),

        // actions: [
        //     IconButton(icon: Icon(Icons.notifications,
        //     color:Colors.white), onPressed: null)
        // ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: searchref,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, int index) {
              return MyallLabs(snapshot: snapshot.data, index: index);
            },
          );
        },
      ),
    );
  }
}
