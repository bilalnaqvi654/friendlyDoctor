import 'package:flutter/material.dart';

import 'LabCard.dart';

class LabTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Book Lab Test", style: TextStyle(color: Colors.white)),

        // actions: [
        //     IconButton(icon: Icon(Icons.notifications,
        //     color:Colors.white), onPressed: null)
        // ],
      ),
      body: Container(
          child: Center(
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Text(
                  '''Best Radiology and Pathology Labs in Pakistan''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


            SizedBox(height:20),
            

            LabCard(myImage: "lib/assets/images/one-health.png",
            myTitle: "One Health Labs",
            myAddress: "Shadman",),
            LabCard(myImage: "lib/assets/images/chughtai-lab.png",
            myTitle: "Chughtai Lab",
            myAddress: "Gulberg III",),

            LabCard(myImage: "lib/assets/images/alnoor.jpg",
            myTitle: "AlNoor Diagnostic Center",
            myAddress: "Johar Town",),             
            ],
          ),
        ),
      )),
    );
  }
}
