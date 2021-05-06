import 'package:flutter/material.dart';

class Disease_Card extends StatelessWidget {

  final myTitle;
  final mySubtitle;

  const Disease_Card({Key key, this.myTitle, this.mySubtitle}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child:
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
                    Text(myTitle, style: TextStyle(fontWeight: FontWeight.bold,)),
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
                      child: Text(mySubtitle,textAlign:TextAlign.center),
                    ),),
              ],),
            ),
            
    );
  }
}