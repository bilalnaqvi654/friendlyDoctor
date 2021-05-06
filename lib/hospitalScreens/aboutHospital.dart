import 'package:flutter/material.dart';

class AboutHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,                
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Icon(Icons.access_time,)
                        ],
                      ),
                      SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0,),
                          Text("Open Today",style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent,),),
                            SizedBox(height: 10.0,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("-Available 24 hours"),
                                      Text("-Emergency is Available"),
                                    ],
                                  ),

                                  SizedBox(width: 10,),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("-ICU is Available"),
                                      Text("-Ventilator is Available"),
                                    ],
                                  ),
                              ],
                            ),                    
                        

                        // Container(
                        //   height: 2,
                        //   width: double.infinity,
                        //   color:Colors.green),
                        ],
                      ),
                    ],
                  ),

                ],),
              ) , 

              SizedBox(height: 10,),

              Divider(color:Colors.grey[200], 
                        height: 2,
                        indent: 40,
                        endIndent: 20,
                        thickness: 2,),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                         // crossAxisAlignment: CrossAxisAlignment.start,                
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                            Icon(Icons.location_on,)
                            
                          ],
                        ),
                        SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0,),
                            Row(
                             // mainAxisAlignment: MainAxisAlignment.center,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                             //mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("Address",style:TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,),),

                                  SizedBox(width: 120.0,),
                                  //FractionallySizedBox(widthFactor: 0.02),
                                  //Spacer(),
                                Text("Show Full Map",style:TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,),),                            
                              ],
                            ),
                              SizedBox(height: 10.0,),
                              Text("13-B Aibak Block, Lahore",
                              style: TextStyle(fontSize:15.0,
                              fontWeight:FontWeight.bold),),

                              Center(
                                child: Image(
                                    height: 250,
                                    width: 250,
                                    image:AssetImage("lib/assets/images/google-maps.jpg")
                                  ),
                              )

                              ],
                        ),
                      ],
                    ),

                  ],),
                ),
              ),
            ],
          ) , 
          
    );
  }
}