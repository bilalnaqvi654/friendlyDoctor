import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'calendarCard.dart';
import 'hospitalCard.dart';
import 'myDocCar.dart';

class DoctorSpeciality extends StatefulWidget {
  @override
  _DoctorSpecialityState createState() => _DoctorSpecialityState();
}

class _DoctorSpecialityState extends State<DoctorSpeciality> {
  bool btn1 = true;
  bool btn2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Doctors"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(onTap: () {}, child: Text("Filters")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              SingleChildScrollView(
                  child: Container(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: allDoctorTab()))),
            ],
          ),
        )),
      ),
    );
  }

  Widget allDoctorTab() {
    var searchref =
        FirebaseFirestore.instance.collection('Docotors').snapshots();
    return StreamBuilder<QuerySnapshot>(
      stream: searchref,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context, int index) {
            return MyDocCard(
              snapshot: snapshot.data,
              index: index,
            );
          },
        );
      },
    );
  }
}
