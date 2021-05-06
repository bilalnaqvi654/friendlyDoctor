import 'package:flutter/material.dart';

class Appointment_Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Appointment Stats",style: TextStyle(
          color:Colors.white),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("lib/assets/images/todo3.png"),
            SizedBox(height: 20.0,),
            Container(
              child:Text("No Record Found", style: TextStyle(fontSize: 20.0))
            ),
          ],
        ),
      ),
    );
  }
}