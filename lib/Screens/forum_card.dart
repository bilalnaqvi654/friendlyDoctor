import 'package:flutter/material.dart';

class ForumCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:            Card(
                child: Container(
                    child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //padding: const EdgeInsets.symmetric(horizontal:28.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                          height: 30.0,
                          width: 50.0,
                          child: Image.asset("lib/assets/images/alnoor.jpg"))
                    ],
                  ),
                ),
                Container(
                  width:230.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "20 weeks pregnant and aspirin",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '''Asking for Self, Female,28 years old, Islamabad''',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '''I am 20 weeks pregnant and I am so scared of late miscarriage and I heard at this stage blood clotting often cause miscarriage as there are high chances of clotting in pregnancy....''',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "2 days ago",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "POST ANSWER",
                          style: TextStyle(
                            color: Color(0xffac0013),
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0,
                          ),
                        ),

                                              SizedBox(
                        height: 10.0,
                      ),
                      ],
                    ),
                  ),
                ),
              ],
            ))),
 
    );
  }
}