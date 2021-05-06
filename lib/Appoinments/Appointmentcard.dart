import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Allapointmentview.dart';
import 'package:medic/Appoinments/AppoinmentOverView.dart';

class AppoinmentCard extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  AppoinmentCard({this.snapshot, this.index});
  @override
  Widget build(BuildContext context) {
    String doctorName =
        "${snapshot.docs[index].data()["DoctorName"].toString()}";
    String day = "${snapshot.docs[index].data()["Problem"].toString()}";
    String dis = "${snapshot.docs[index].data()["Day"].toString()}";
    String id = snapshot.docs[index].id;
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all()),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AllOpp(
                    doctorName: doctorName,
                    day: day,
                    disease: dis,
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
            "$doctorName",
            style: TextStyle(fontSize: 12.0),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$day",
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
