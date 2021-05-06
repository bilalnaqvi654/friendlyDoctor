import 'package:flutter/material.dart';

class LabCard extends StatelessWidget {
  final myImage;
  final myTitle;
  final myAddress;
  const LabCard({this.myImage, this.myTitle, this.myAddress});

  

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            decoration: BoxDecoration(
                //border: Border(

                //left: BorderSide(
                // color: Theme.of(context).primaryColor,
                // width: 7.0
                //),
                //),
                //shape: BoxShape.circle, // BoxShape.circle or BoxShape.retangle
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80.0,
                      child: Image.asset(myImage),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(myTitle,
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(myAddress)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.access_time),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("09:00 AM - 11:00 PM")
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: FlatButton(
                    color: Color(0xffbf2942),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.calendar_today, color: Colors.white),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text("View Details",
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                // ClipOval(
                //   //borderRadius: BorderRadius.circular(50),
                //   child: RaisedButton(
                //     child: Text("Button"),
                //     onPressed: () {},
                //   ),
                // ),
                OutlineButton(
                  color: Color(0xffbf2942),
                  shape: StadiumBorder(),
                  // RoundedRectangleBorder(
                  // side:

                  //                 BorderSide(
                  //   color: Color(0xffbf2942),
                  //   width: 2,
                  //   style: BorderStyle.solid
                  // ),
                  //                 borderRadius: BorderRadius.circular(30.0)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, color: Color(0xffbf2942)),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Call Now",
                          style: TextStyle(color: Color(0xffbf2942))),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              color: Color(0xfff4fffa),
              height: 35.0,
              width: 65.0,
              child: Center(
                child: Text(
                  "20% Off",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10.0, color: Color(0xff20be88)),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
