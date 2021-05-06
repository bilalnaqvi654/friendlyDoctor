import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Appoinments/LabAppointmentOverview.dart';

class MyallLabs extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  MyallLabs({this.snapshot, this.index});
  @override
  Widget build(BuildContext context) {
    String testDay =
        "${snapshot.docs[index].data()["day_of_appointment"].toString()}";
    String status = "${snapshot.docs[index].data()["status"].toString()}";
    String testDetials =
        "${snapshot.docs[index].data()["test_Details"].toString()}";
    String id = snapshot.docs[index].id;
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all()),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => LabAppointmentOverview(
                    day: testDay,
                    status: status,
                    testdetails: testDetials,
                    id: id,
                  )));
        },
        child: ListTile(
          leading: Image.asset(
            "lib/assets/images/hospital2.png",
            height: 30.0,
          ),
          trailing: Icon(Icons.arrow_forward_ios,
              color: Colors.redAccent, size: 15.0),
          title: Text(
            "${snapshot.docs[index].data()["LabName"].toString()}",
            style: TextStyle(fontSize: 12.0),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${snapshot.docs[index].data()["test_Details"].toString()}",
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
