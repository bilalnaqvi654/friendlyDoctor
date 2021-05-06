import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/widgets/AllHospitals.dart';

class AllHospital extends StatefulWidget {
  @override
  _AllHospitalState createState() => _AllHospitalState();
}

class _AllHospitalState extends State<AllHospital> {
  var searchref =
      FirebaseFirestore.instance.collection('Hospitals').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Hospitals List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: searchref,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, int index) {
              return AllHospitals(snapshot: snapshot.data, index: index);
            },
          );
        },
      ),
    );
  }
}
