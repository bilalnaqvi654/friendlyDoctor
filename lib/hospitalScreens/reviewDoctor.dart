import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';

class DoctorReviews extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  DoctorReviews({this.snapshot, this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Patient Reviews About Dr.$doctorName",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Image(
                    height: 50,
                    width: 50,
                    image: AssetImage("lib/assets/images/man-profile.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "${snapshot.docs[index].data()["PatName"].toString()}",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 10),
                      Container(
                          //width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                            border: Border(),
                            //shape: RoundedRectangleBorder()
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 250,
                                  height: 400,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      "${snapshot.docs[index].data()["ReviewName"].toString()}",
                                      maxLines: 6,
                                    ),
                                  ))
                            ],
                          ))
                    ],
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
