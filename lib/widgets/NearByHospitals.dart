import 'package:flutter/material.dart';

import 'HospitalTiles.dart';

class NearByHospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HospitalTiles(
          hospitalName: "1-b Hospital",
          hospitalAddress:
              "F-8/3, Main KohistanRoad, Opp Islamabad Diagnostic Center",
        ),
        HospitalTiles(
          hospitalName: "(ryk) Rahim Yar Khan Hospital",
          hospitalAddress: "Near Superior College, canal Road",
        ),
        HospitalTiles(
          hospitalName: "2-jehan Plaza",
          hospitalAddress: "Saddar",
        ),
        HospitalTiles(
          hospitalName: "13-b Hospital",
          hospitalAddress: "13-B Aibak Block",
        ),
        HospitalTiles(
          hospitalName: "20/a, Al-mustafa Homes",
          hospitalAddress: "Unit No 9",
        ),
        HospitalTiles(
          hospitalName: "14/7 Avenue",
          hospitalAddress: "7 Civil Lines",
        ),
        HospitalTiles(
          hospitalName: "13-b Hospital",
          hospitalAddress: "13-B Aibak Block",
        ),
        HospitalTiles(
          hospitalName: "14/7 Avenue",
          hospitalAddress: "7 Civil Lines",
        ),
        HospitalTiles(
          hospitalName: "2-jehan Plaza",
          hospitalAddress: "Saddar",
        ),
        HospitalTiles(
          hospitalName: "20/a, Al-mustafa Homes",
          hospitalAddress: "Unit No 9",
        ),
      ],
    );
  }
}
