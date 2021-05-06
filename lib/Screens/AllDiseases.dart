import 'package:flutter/material.dart';
import 'package:medic/Screens/disease_Card.dart';

import 'mySearch.dart';

class AllDiseases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent), 
       backgroundColor: Colors.blue,
       centerTitle: true,
        title: Text("All Diseases",style:TextStyle(color:Colors.white)),


        actions: [
            IconButton(icon: Icon(Icons.notifications,
            color:Colors.white), onPressed: null)
        ],
      ),

      body:SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MySearch(mySearch:'Search Diseases'),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text("Allergy Specialist", style: TextStyle(fontWeight: FontWeight.bold,)),
                      Text("See all"),

                    ],),
                    SizedBox(height: 10.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade100,
                      ),
                      //alignment: Alignment.center,
                      height:40.0,

                      //width: 50.0,
                      // color: Color(0xffe9f4f8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Bronchial Asthma",textAlign:TextAlign.center),
                      ),),
                ],),
              ),
              

              Disease_Card(myTitle: "Cancer Specialist/ Oncologist",
              mySubtitle: "Pancreatic Cancer",
              ),

              Disease_Card(myTitle: "Cardiac Surgeon",
              mySubtitle: "Congenital Heart Diseases",
              ),  

              Disease_Card(myTitle: "Cosmetic Surgeon",
              mySubtitle: "Planter Wart",
              ),

              Disease_Card(myTitle: "Dentist",
              mySubtitle: "Gingivits",
              ),   

              Disease_Card(myTitle: "Dermatologist",
              mySubtitle: "Rubeola",
              ),       
            ],
          )
        ),
      )
    );
  }
}