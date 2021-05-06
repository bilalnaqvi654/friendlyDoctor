import 'package:flutter/material.dart';

import 'SelectLocation.dart';

class ChangeLocation extends StatefulWidget {
  @override
  _ChangeLocationState createState() => _ChangeLocationState();
}

class _ChangeLocationState extends State<ChangeLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Select Location",style: TextStyle(color:Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
CityName(cityName: "Abbottabad", myFunction:null),
CityName(cityName: "Attock", myFunction:null),
CityName(cityName: "Bahawalnagar", myFunction:null),
CityName(cityName: "Bahawalpur", myFunction:null),
CityName(cityName: "Bannu", myFunction:null),
CityName(cityName: "Bhakkar", myFunction:null),
CityName(cityName: "Karachi", myFunction:null),
CityName(cityName: "Lahore", myFunction:null),
CityName(cityName: "Islamabad", myFunction:null),
CityName(cityName: "Bhalwal", myFunction:null),
CityName(cityName: "Burewala", myFunction:null),
CityName(cityName: "Chakwal", myFunction:null),
CityName(cityName: "Charsadda", myFunction:null),
CityName(cityName: "Chistian", myFunction:null),
CityName(cityName: "Daska", myFunction:null),
CityName(cityName: "Dera Ghazi Khan", myFunction:null),
CityName(cityName: "Dera Ghazi Khan", myFunction:null),
CityName(cityName: "Dera Ghazi Khan", myFunction:null),


        ],
      )
    );
  }
}