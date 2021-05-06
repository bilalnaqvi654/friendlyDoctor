import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Stream%20Builders/ALLhosptials.dart';

import 'AllHospitals.dart';
import 'HospitalTiles.dart';
import 'NearByHospitals.dart';

class hospitalList extends StatefulWidget {
  @override
  _hospitalListState createState() => _hospitalListState();
}

class _hospitalListState extends State<hospitalList> {
  bool myColor = true;
  bool myColor2 = true;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.blue,
    //     title: Text(
    //       "Hospitals List",
    //       style: TextStyle(color: Colors.white),
    //     ),
    //     centerTitle: true,
    //   ),
    //   body:
    return SizedBox(
      height: 200,
      child: ListView(
        shrinkWrap: true,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        setState(() {
                          myColor = true;
                          myColor2 = false;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            "ALL HOSPITALS",
                            //style: TextStyle(decoration: myColor ? TextDecoration.underline : TextDecoration.none),
                          ),
                          Divider(
                              thickness: 2.0,
                              color: myColor
                                  ? Colors.black87
                                  : Colors.transparent),
                        ],
                      )),
                ),
                Expanded(
                    child: FlatButton(
                        onPressed: () {
                          setState(() {
                            myColor2 = true;
                            myColor = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "NEARBY HOSPITALS",
                              //style: TextStyle(decoration: myColor ? TextDecoration.none : TextDecoration.underline),
                            ),
                            Divider(
                                thickness: 2.0,
                                color: myColor
                                    ? Colors.transparent
                                    : Colors.black87),
                          ],
                        ))),
              ],
            ),
          ),
          Container(child: myColor ? AllHospital() : NearByHospitals()),
        ],
      ),
    );
  }
}
