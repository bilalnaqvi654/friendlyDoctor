import 'package:flutter/material.dart';

class Social_Card extends StatelessWidget {

  final title;
  final custom_Icon;

  const Social_Card({Key key, this.title,this.custom_Icon});
  
  @override
  Widget build(BuildContext context) {
    return                    Container(
      height: 100.0,
      width: 120.0,
      child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                                          child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:0.0,vertical: 0.0),
                    
                    child: Card(
                       
                        child:Container(
                          padding:EdgeInsets.symmetric(horizontal:5.0,vertical: 5.0),
                          child: 

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                ClipRRect(
                                  borderRadius: BorderRadius.circular(28.0),
                                  child: Container(
                                    height:60.0,
                                    width:60.0,
                                    color: Color(0xffebf7fc),
                                    child: custom_Icon),
                                    ),
                              Expanded(child: SizedBox(height:10.0)),
                              Text(title,
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                fontSize: 8.0,
                                color:Color(0xff54778c)),),
                              ],
                            ),
                        ),
                    ),
                  ),
                     ),
    );
  }
}