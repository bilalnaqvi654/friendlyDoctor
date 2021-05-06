import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Screens/medicineDelivery.dart';

class PrescriptionResult extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  PrescriptionResult({this.snapshot, this.index});
  @override
  Widget build(BuildContext context) {
    String pres = '${snapshot.docs[index].data()['PatientName']}';
    String doctorEmail = '${snapshot.docs[index].data()['PatientName']}';
    String name = '${snapshot.docs[index].data()['PatientName']}';
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              DeliveryScreen(pres: pres, doctor: doctorEmail, patName: name),
        ));
      },
      title: Text('${snapshot.docs[index].data()['PatientName']}'),
      subtitle: Text('${snapshot.docs[index].data()['Fee']}'),
    );
  }
}
