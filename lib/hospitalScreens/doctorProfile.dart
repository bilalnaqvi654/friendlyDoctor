import 'package:flutter/material.dart';
import 'package:medic/Appoinments/OnClinicAppointment.dart';
import 'package:medic/Appoinments/VideoAppointment.dart';
import 'package:medic/Global.dart';
import 'package:medic/Stream%20Builders/Reviewstream.dart';

import 'neueCard.dart';
import 'reviewDoctor.dart';

class DoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text("$doctorName"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Column(
                    children: [
                      Image(
                        height: 100,
                        width: 100,
                        image: NetworkImage("$image"),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$doctorName",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("$specialList"),
                      Container(
                        width: width * 0.59,
                        child: Text(
                          "$bio",
                          maxLines: 4,
                        ),
                      )
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: [
                    NeueCard(
                      myIcon: Icons.access_time,
                      myTitle: "16 mins",
                      mySubTitle: "Wait Time",
                    ),
                    NeueCard(
                      myIcon: Icons.explore,
                      myTitle: "$experience" " " "years",
                      mySubTitle: "Experience",
                    ),
                    NeueCard(
                      myIcon: Icons.favorite_border,
                      myTitle: "91%",
                      mySubTitle: "Patient Satisfaction",
                    ),
                    NeueCard(
                      myIcon: Icons.people_outline,
                      myTitle: "100%",
                      mySubTitle: "Client/ Staff Score",
                    ),
                  ],
                ),
              ),
//================= Book Video Consultation
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book Video Consultation",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.credit_card),
                            label: Text("Fee:"),
                          ),
                          Text(
                            "Rs." "$fee",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.wb_sunny),
                            label: Text("Days:"),
                          ),
                          Text(
                            "$startday" " " "to" " " "$endDay",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.access_time),
                            label: Text("Time:"),
                          ),
                          Text(
                            "$starttime" " " "to" " " "$endtime",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoAppointment()));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.videocam,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Book Video Consultation",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
//================== Iqbal Clinics Lahore
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$hospital",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.credit_card),
                            label: Text("Fee:"),
                          ),
                          Text(
                            "$fee",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.wb_sunny),
                            label: Text("Days:"),
                          ),
                          Text(
                            "$startday" " " "to" " " "$endDay",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlatButton.icon(
                            icon: Icon(Icons.access_time),
                            label: Text("Time:"),
                          ),
                          Text(
                            "$starttime" " " "to" " " "$endtime",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 2.0,
                      ),
                      Center(
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OnclinicAppoinmet()));
                          },
                          child: Text(
                            "Book Appointment",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

//================== Video Section ===================

//================== Reviews Section ===================

              ReviewScreen(),

//================== treatment available Section ===================
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     Text("Disceases Treatments available",
              //         style:
              //             TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              //     Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Row(
              //         children: [
              //           Container(
              //             //alignment: Alignment.center,
              //             height: 30,
              //             decoration: BoxDecoration(
              //                 color: Colors.grey[300],
              //                 borderRadius: BorderRadius.circular(10)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Text("Gingivits",
              //                   style: TextStyle(
              //                     color: Colors.blue,
              //                   )),
              //             ),
              //           ),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           Container(
              //             //alignment: Alignment.center,
              //             height: 30,
              //             decoration: BoxDecoration(
              //                 color: Colors.grey[300],
              //                 borderRadius: BorderRadius.circular(10)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Text("Teeth Problem",
              //                   style: TextStyle(
              //                     color: Colors.blue,
              //                   )),
              //             ),
              //           ),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           Container(
              //             //alignment: Alignment.center,
              //             height: 30,
              //             decoration: BoxDecoration(
              //                 color: Colors.grey[300],
              //                 borderRadius: BorderRadius.circular(10)),
              //             child: Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: Text("Tooth Decay",
              //                   style: TextStyle(
              //                     color: Colors.blue,
              //                   )),
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     Text("View All",
              //         style: TextStyle(
              //           color: Colors.blue,
              //         )),
              //     SizedBox(
              //       height: 15,
              //     ),
              //   ],
              // ),

//================== Experience Section ===================

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Card(
              //     child: Padding(
              //       padding: const EdgeInsets.all(18.0),
              //       child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text("Work Experience",
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.blue,
              //                 )),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Text("Dental Practitioner",
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   //fontWeight: FontWeight.bold,
              //                   color: Colors.blue,
              //                 )),
              //             Text(
              //                 '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
              //                 style: TextStyle(
              //                     //fontWeight: FontWeight.bold,
              //                     //color:Colors.blue,
              //                     )),
              //             SizedBox(
              //               height: 20,
              //             ),
              //             Text("Chief Dental Surgeon",
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   //fontWeight: FontWeight.bold,
              //                   color: Colors.blue,
              //                 )),
              //             Text(
              //                 '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
              //                 style: TextStyle(
              //                     //fontWeight: FontWeight.bold,
              //                     //color:Colors.blue,
              //                     )),
              //             SizedBox(
              //               height: 20,
              //             ),
              //             Text("General Dentist",
              //                 style: TextStyle(
              //                   fontSize: 16,
              //                   //fontWeight: FontWeight.bold,
              //                   color: Colors.blue,
              //                 )),
              //             Text(
              //                 '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
              //                 style: TextStyle(
              //                     //fontWeight: FontWeight.bold,
              //                     //color:Colors.blue,
              //                     )),
              //           ]),
              //     ),
              //   ),
              // ),

//================== About Me Section ===================

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Card(
              //     child: Padding(
              //       padding: const EdgeInsets.all(18.0),
              //       child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text("About Me",
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.blue,
              //                 )),
              //             SizedBox(
              //               height: 20,
              //             ),
              //             Container(
              //               child: Text('$bio',
              //                   maxLines: 10,
              //                   style: TextStyle(
              //                       //fontWeight: FontWeight.bold,
              //                       //color:Colors.blue,
              //                       )),
              //             ),
              //             SizedBox(
              //               height: 20,
              //             ),
              //           ]),
              //     ),
              //   ),
              // ),
            ],
          ),
        ));
  }
}
