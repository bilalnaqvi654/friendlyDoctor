import 'package:flutter/material.dart';

class MyStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: EdgeInsets.symmetric(horizontal:5.0,vertical: 0.0),
                  
                  child: Card(
                   
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10.0,vertical: 20.0),
                      child: Row(children: [
                        
                        Expanded(
                            child: Column(
                            children: [
                              Text("10M +",style:TextStyle(fontWeight:FontWeight.bold, color:Colors.black54)),
                            Text("Served Patients",style:TextStyle(//fontWeight:FontWeight.bold, 
                            fontSize: 10.0,
                            color:Colors.black54)),
                            ],
                          ),
                        ),
                        Container(
                          color:Colors.black54,
                          height: 30.0,
                          width: 2.0,
                        ),
                        // Divider(height: 20.0,thickness:7.0,color:Colors.black),
                        Expanded(
                            child: Column(
                            children: [
                              Text("16K +",style:TextStyle(fontWeight:FontWeight.bold, color:Colors.black54)),
                            Text("Doctors",style:TextStyle(//fontWeight:FontWeight.bold, 
                            fontSize: 10.0,
                            color:Colors.black54)),
                            ],
                          ),
                        ),

                        Container(
                          color:Colors.black54,
                          height: 30.0,
                          width: 2.0,
                        ),
                        // Divider(height: 20.0,thickness:7.0,color:Colors.black),
                        Expanded(
                            child: Column(
                            children: [
                              Text("50K +",style:TextStyle(fontWeight:FontWeight.bold, color:Colors.black54)),
                            Text("Reviews",style:TextStyle(//fontWeight:FontWeight.bold, 
                            fontSize: 10.0,
                            color:Colors.black54)),
                            ],
                          ),
                        ),

                       // Expanded(child: SizedBox(width:20),),
                        Container(
                          color:Colors.black54,
                          height: 30.0,
                          width: 2.0,
                        ),
                        // Divider(height: 20.0,thickness:7.0,color:Colors.black),
                        Expanded(
                            child: Column(
                            children: [
                              Text("4K +",style:TextStyle(fontWeight:FontWeight.bold, color:Colors.black54)),
                            Text("Hospitals",style:TextStyle(//fontWeight:FontWeight.bold, 
                            fontSize: 10.0,
                            color:Colors.black54)),
                            ],
                          ),
                        ),                        

                      ],),
                    ),
                  ),
                );
  }
}