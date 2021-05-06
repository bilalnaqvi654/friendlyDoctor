import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Stream%20Builders/MyAppoinments.dart';
import 'package:medic/myHomePage.dart';
import 'package:medic/widgets/Button.dart';

class LabAppointmentOverview extends StatefulWidget {
  final String day;
  final String status;
  final String testdetails;
  final String id;
  LabAppointmentOverview({
    this.day,
    this.status,
    this.testdetails,
    this.id,
  });

  @override
  _LabAppointmentOverviewState createState() => _LabAppointmentOverviewState();
}

class _LabAppointmentOverviewState extends State<LabAppointmentOverview> {
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
                          'Test Day:',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.day}',
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
                          'Status:',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${widget.status}',
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
                          'Details:',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ('${widget.testdetails}'),
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
            buttonWidget(
              title: 'Cancel',
              ontap: () {
                cancelApointMent(widget.testdetails);
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
        .collection("Appoinments")
        .doc(widget.id)
        .delete()
        .then((_) {
      print("Success!");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }
}
