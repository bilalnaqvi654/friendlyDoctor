import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic/Appoinments/BookLabAppoinment.dart';

class LabappointMent extends StatefulWidget {
  @override
  _LabappointMentState createState() => _LabappointMentState();
}

class _LabappointMentState extends State<LabappointMent> {
  List<QueryDocumentSnapshot> _queryCat;

  String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book  Lab Appointment'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection('Laportory').snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return const Center(
                child: const CupertinoActivityIndicator(),
              );
            var length = snapshot.data.docs.length;
            DocumentSnapshot ds = snapshot.data.docs[length - 1];
            _queryCat = snapshot.data.docs;
            return new Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                    flex: 2,
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(12.0, 10.0, 10.0, 10.0),
                      child: new Text(
                        "Select Lab",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  new Expanded(
                    flex: 4,
                    child: new InputDecorator(
                      decoration: const InputDecoration(
                        //labelText: 'Activity',
                        hintText: 'Select Lab',
                        hintStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 16.0,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      isEmpty: category == null,
                      child: DropdownButton(
                        onChanged: (value1) {
                          setState(() {
                            category = value1;
                            var dropDown = false;
                            print(category);
                          });
                        },
                        value: category,
                        isDense: true,
                        isExpanded: true,
                        items:
                            snapshot.data.docs.map((DocumentSnapshot document) {
                          return new DropdownMenuItem<String>(
                              value: document.data()['LabName'],
                              child: new Text(
                                document.data()['LabName'],
                              ));
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          height: 75.0,
          width: 400.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BookLabAppointment(
                    labName: category,
                  ),
                ));
              },
              isExtended: true,
              child: Text(
                'Book Appointment',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
