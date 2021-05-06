import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';

import 'calendarCard.dart';
import 'doctorProfile.dart';
import 'hospitalCard.dart';

class MyDocCard extends StatelessWidget {
  final QuerySnapshot snapshot;
  final int index;
  MyDocCard({this.index, this.snapshot});
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;
    return InkWell(
      onTap: () {
        doctorName = "${snapshot.docs[index].data()["Name"].toString()}";
        DoctorEmail = "${snapshot.docs[index].data()["Email"].toString()}";
        specialList = "${snapshot.docs[index].data()["Specialist"].toString()}";
        bio = "${snapshot.docs[index].data()["BioData"].toString()}";
        fee = "${snapshot.docs[index].data()["Fee"].toString()}";
        startday = "${snapshot.docs[index].data()["Start Day"].toString()}";
        endDay = "${snapshot.docs[index].data()["End Day"].toString()}";
        experience = "${snapshot.docs[index].data()["Experience"].toString()}";
        starttime = "${snapshot.docs[index].data()["Start Time"].toString()}";
        endtime = "${snapshot.docs[index].data()["End time"].toString()}";
        image = "${snapshot.docs[index].data()["imageUrl"].toString()}";
        hospital = "${snapshot.docs[index].data()["Hospital Name"].toString()}";
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DoctorProfile()));
      },
      child: SingleChildScrollView(
        child: Container(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        height: 100,
                        width: 100,
                        image: NetworkImage(
                            "${snapshot.docs[index].data()["imageUrl"].toString()}"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "${snapshot.docs[index].data()["Name"].toString()}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text(
                                "(5.0 /5) 8 Reviews",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "${snapshot.docs[index].data()["Specialist"].toString()}",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Container(
                            width: width * 0.59,
                            child: Text(
                              "${snapshot.docs[index].data()["BioData"].toString()}",
                              maxLines: 4,
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.all(8),
                    //width:double.infinity,
                    //width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      children: [
                        //Row(

                        //physics:ScrollPhysics(),
                        //reverse: true,

                        //scrollDirection: Axis.horizontal,
                        //children: [
                        Container(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffe9f4f8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      " ${snapshot.docs[index].data()["Hospital Name"].toString()}"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "${snapshot.docs[index].data()["Start Time"].toString()} "
                                      "- "
                                      "${snapshot.docs[index].data()["End time"].toString()}"),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),

                        // ],
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      children: [
                        CalendarCard(
                          myIcon: Icons.calendar_today,
                          mytitle: "In-clinic \nAppointment",
                          myColor: Colors.transparent,
                          mytitleColor: true,
                        ),
                        SizedBox(width: 10),
                        CalendarCard(
                          myIcon: Icons.videocam,
                          mytitle: "Video \nConsult",
                          myColor: Colors.red,
                          mytitleColor: false,
                        ),
                        SizedBox(width: 10),
                        CalendarCard(
                          myIcon: Icons.star,
                          mytitle: "View \nProfile",
                          myColor: Colors.red,
                          mytitleColor: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
