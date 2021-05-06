import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';

import 'HospitalTiles.dart';

class AllHospitals extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  AllHospitals({this.snapshot, this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HospitalTiles(
          hospitalName:
              "${snapshot.docs[index].data()["HospitalName"].toString()}",
          hospitalAddress:
              "${snapshot.docs[index].data()["Address"].toString()}",
          hospitalnumber:
              "${snapshot.docs[index].data()["PhoneNumber"].toString()}",
        ),
        // HospitalTiles(
        //   hospitalName: "1-b Hospital",
        //   hospitalAddress:
        //       "F-8/3, Main KohistanRoad, Opp Islamabad Diagnostic Center",
        //   doctorAvailable: 2,
        // // ),
        // HospitalTiles(
        //   hospitalName: "13-b Hospital",
        //   hospitalAddress: "13-B Aibak Block",
        //   doctorAvailable: 3,
        // ),
        // HospitalTiles(
        //   hospitalName: "14/7 Avenue",
        //   hospitalAddress: "7 Civil Lines",
        //   doctorAvailable: 1,
        // ),
        // HospitalTiles(
        //   hospitalName: "2-jehan Plaza",
        //   hospitalAddress: "Saddar",
        //   doctorAvailable: 1,
        // ),
        // HospitalTiles(
        //   hospitalName: "20/a, Al-mustafa Homes",
        //   hospitalAddress: "Unit No 9",
        //   doctorAvailable: 1,
        // ),
        // HospitalTiles(
        //   hospitalName: "13-b Hospital",
        //   hospitalAddress: "13-B Aibak Block",
        //   doctorAvailable: 3,
        // ),
        // HospitalTiles(
        //   hospitalName: "14/7 Avenue",
        //   hospitalAddress: "7 Civil Lines",
        //   doctorAvailable: 1,
        // ),
        // HospitalTiles(
        //   hospitalName: "2-jehan Plaza",
        //   hospitalAddress: "Saddar",
        //   doctorAvailable: 1,
        // ),
        // HospitalTiles(
        //   hospitalName: "20/a, Al-mustafa Homes",
        //   hospitalAddress: "Unit No 9",
        //   doctorAvailable: 1,
        // ),
      ],
    );
  }
}
