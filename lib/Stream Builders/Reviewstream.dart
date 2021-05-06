import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/hospitalScreens/reviewDoctor.dart';

class ReviewScreen extends StatefulWidget {
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  var searchref = FirebaseFirestore.instance
      .collection('Doctorseview')
      .where('DocName', isEqualTo: '$DoctorEmail')
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: searchref,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          Text('');
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data.docs.length,
          itemBuilder: (context, int index) {
            return DoctorReviews(snapshot: snapshot.data, index: index);
          },
        );
      },
    );
  }
}
