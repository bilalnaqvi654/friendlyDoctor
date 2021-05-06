import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/SerachResults/PrescriptionResults.dart';
import 'package:medic/SerachResults/choose_Speciality.dart';

class Prescribtion extends StatefulWidget {
  @override
  _PrescribtionState createState() => _PrescribtionState();
}

class _PrescribtionState extends State<Prescribtion> {
  var searchref = FirebaseFirestore.instance
      .collection('Prescribtons')
      .where('PatienEmail', isEqualTo: '$userEmail')
      .snapshots();
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
              return PrescriptionResult(snapshot: snapshot.data, index: index);
            },
          );
        },
      ),
    );
  }
}
