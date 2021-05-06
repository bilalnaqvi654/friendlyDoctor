import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Stream%20Builders/MyAppoinments.dart';
import 'package:medic/myHomePage.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/Paymentdone.dart';

class VideoAppt extends StatefulWidget {
  final String doctorName;
  final String disease;
  final String day;
  VideoAppt({this.doctorName, this.disease, this.day});

  @override
  _VideoApptState createState() => _VideoApptState();
}

class _VideoApptState extends State<VideoAppt> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double height = mediaQueryData.size.height;
    double width = mediaQueryData.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Overview'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                color: Colors.lightBlue[100],
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                elevation: 12.0,
                child: Container(
                  width: width * 0.9,
                  height: height / 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Docotor:',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.doctorName}',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                color: Colors.blue[100],
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                elevation: 12.0,
                child: Container(
                  width: width * 0.9,
                  height: height / 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Problem:',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.disease}',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                color: Colors.lightBlue[100],
                shape: StadiumBorder(
                  side: BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                elevation: 12.0,
                child: Container(
                  width: width * 0.9,
                  height: height / 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Day of Appoint:',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.day}',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            buttonWidget(
              title: 'Cancel',
              ontap: () {
                cancelApointMent(widget.disease);
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            buttonWidget(
              title: 'My appoinments',
              ontap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Myappointments()));
              },
            )
          ],
        ),
      ),
    );
  }

  void cancelApointMent(String disease) {
    FirebaseFirestore.instance
        .collection("VideoAppointMent")
        .where("Problem", isEqualTo: "$disease")
        .get()
        .then((value) {
      value.docs.forEach((element) {
        FirebaseFirestore.instance
            .collection("VideoAppointMent")
            .doc(element.id)
            .delete()
            .then((_) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (BuildContext context) => NoDriverDialog(
              title: 'Video Calling ',
              subtitle: 'Doctor will Call you as Soon as Available',
            ),
          );
        });
      });
    });
  }
}
