import 'package:flutter/material.dart';

class HospitalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Container(
                decoration: BoxDecoration(
                  borderRadius:
                    BorderRadius.circular(10),
                  color:Color(0xffe9f4f8),
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Bashir Hospital"),
                      SizedBox(height: 10,),
                      Text("Timings: 11:00 AM - 02:00 PM Rs.1000"),
                    ],
                  ),
                ),
              ),
               
    );
  }
}