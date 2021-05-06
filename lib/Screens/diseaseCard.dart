import 'package:flutter/material.dart';
import 'package:medic/hospitalScreens/doctorSpeciality.dart';

class DiseaseCard extends StatelessWidget {
  final myTitle;
  final subTitle;
  final String image;

  const DiseaseCard({this.myTitle, this.subTitle, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DoctorSpeciality(),
          ));
        },
        child: Card(
          child: ListTile(
            title: Text(myTitle),
            subtitle: Text(subTitle),
            leading: Image.asset(image),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
