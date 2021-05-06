import 'package:flutter/material.dart';
import 'package:medic/hospitalScreens/hospitalprofile.dart';

class HospitalTiles extends StatelessWidget {
  final hospitalName;
  final hospitalAddress;
  final hospitalnumber;

  HospitalTiles({this.hospitalName, this.hospitalAddress, this.hospitalnumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all()),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => HospitalProfile(
                    hospitalName: hospitalName,
                    hospitalAddress: hospitalAddress,
                    hospitalPhoneNumber: hospitalnumber,
                  )));
        },
        child: ListTile(
          leading: Image.asset(
            "lib/assets/images/hospital2.png",
            height: 30.0,
          ),
          trailing: Icon(Icons.arrow_forward_ios,
              color: Colors.redAccent, size: 15.0),
          title: Text(
            hospitalName,
            style: TextStyle(fontSize: 12.0),
          ),
          subtitle: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hospitalAddress,
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
