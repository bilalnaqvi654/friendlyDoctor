import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/SerachResults/choose_Speciality.dart';

class OnBoardHospital extends StatelessWidget {
  final String hospitalName;
  OnBoardHospital({this.hospitalName});
  @override
  Widget build(BuildContext context) {
    var searchref = FirebaseFirestore.instance
        .collection("Docotors")
        .where("Hospital Name", isEqualTo: '$hospitalName')
        .snapshots();
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
            return ChooseSpeciality(snapshot: snapshot.data, index: index);
          },
        );
      },
    );
  }
}
