import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Global.dart';
import 'package:medic/widgets/Button.dart';
import 'package:medic/widgets/Paymentdone.dart';
import 'package:medic/widgets/TextField.dart';

class DoctorRiview extends StatefulWidget {
  String review;
  final String doctor;
  final String patName;
  DoctorRiview({this.doctor, this.patName});

  @override
  _DoctorRiviewState createState() => _DoctorRiviewState();
}

class _DoctorRiviewState extends State<DoctorRiview> {
  String review;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Revies'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Enter Your Review'),
            SizedBox(
              height: 14.0,
            ),
            textField(
              maxLines: 4,
              title: 'Review',
              placeHolder: 'Enter Your Review about Doctor',
              icon: Icon(Icons.rate_review),
              onChangedValue: (val) {
                review = val;
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            buttonWidget(
              title: 'Submit',
              ontap: () async {
                await storeReiview();
              },
            )
          ],
        ),
      ),
    );
  }

  storeReiview() {
    FirebaseFirestore.instance.collection('Doctorseview').add({
      "PatName": "${widget.patName}",
      "DocName": "$DoctorEmail",
      "ReviewName": "$review",
    }).then((_) {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => NoDriverDialog(
          title: 'Thank You',
          subtitle: 'Rider will Contact you soon ',
        ),
      );
    });
  }
}
