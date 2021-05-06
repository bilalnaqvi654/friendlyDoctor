import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:medic/Stream%20Builders/ALLhosptials.dart';

class ReviewHospital extends StatelessWidget {
  final String hospitalName;

  String feedback;
  ReviewHospital({this.hospitalName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Share Your Experience"),
      ),
      body: Container(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Share your comments:"),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              maxLength: 1000,
              onChanged: (val) {
                feedback = val;
              },
              //contentPadding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Write Your Comments",
                hintStyle: TextStyle(),
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              ),
            ),
            Center(
              child: FlatButton(
                color: Color(0xff2097f3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("Submit Feedback",
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  addHospitalFeedBack(context);
                },
              ),
            )
          ],
        ),
      )),
    );
  }

  void addHospitalFeedBack(context) {
    FirebaseFirestore.instance.collection("Hospital_FeedBack").add({
      "FeedBack": "$feedback",
      "HospitalName": "$hospitalName",
    }).then((_) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => AllHospital()));
    });
  }
}
