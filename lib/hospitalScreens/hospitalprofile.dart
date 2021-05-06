import 'package:flutter/material.dart';

import 'aboutHospital.dart';
import 'onboard.dart';
import 'reviewHospital.dart';

class HospitalProfile extends StatefulWidget {
  final String hospitalName;
  final String hospitalAddress;
  final String hospitalPhoneNumber;
  HospitalProfile(
      {this.hospitalName, this.hospitalAddress, this.hospitalPhoneNumber});
  @override
  _HospitalProfileState createState() => _HospitalProfileState();
}

class _HospitalProfileState extends State<HospitalProfile> {
  bool btn1 = true;
  bool btn2 = false;
  int length = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hospital Profile"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Icon(Icons.phone, color: Colors.red),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image(
                    height: 100,
                    width: 100,
                    image: AssetImage("lib/assets/images/hospital2.png"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${widget.hospitalName}",
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("${widget.hospitalAddress}",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          )),
                      Text("${widget.hospitalPhoneNumber}",
                          style: TextStyle(
                            fontSize: 12.0,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlatButton(
                              //highlightedBorderColor:Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.greenAccent,
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text(
                                "Call",
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                ),
                              ),
                              onPressed: () {}),
                          SizedBox(width: 10.0),
                          FlatButton(
                              color: Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Colors.greenAccent,
                                    width: 2.0,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0)),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ReviewHospital(
                                          hospitalName: widget.hospitalName,
                                        )));
                              },
                              child: Text(
                                "Review Hospital",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),

              Container(
                //height: length.toDouble(),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          btn1 = true;
                          btn2 = false;
                        });
                      },
                      child: Text("ABOUT HOSPITAL"),
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          btn1 = false;
                          btn2 = true;
                        });
                      },
                      child: Text("DOCTORS ONBOARD"),
                    ),
                  ],
                ),
              ),

              //color: Colors.grey[200],
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        height: 2.0,
                        width: 100,
                        color: btn1 ? Colors.greenAccent : Colors.transparent),
                  ),
                  Expanded(
                    child: Container(
                        height: 2.0,
                        width: 100,
                        color: btn2 ? Colors.greenAccent : Colors.transparent),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              Container(
                height: 40.0,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.grey[300],
                child: Text("13-b Hospital"),
              ),

              Container(
                child: btn1
                    ? AboutHospital()
                    : OnBoardHospital(
                        hospitalName: widget.hospitalName,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
