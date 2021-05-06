import 'package:flutter/material.dart';
import 'package:medic/Screens/DocotrReview.dart';

class DeliveryScreen extends StatefulWidget {
  final String pres;
  final String doctor;
  final String patName;
  DeliveryScreen({this.pres, this.doctor, this.patName});
  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Enter your Details",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100.0,
                              child: Text(
                                '''Friendly Dortor provide your Medicines''',
                                style: TextStyle(fontWeight: FontWeight.normal),
                              ),
                            ),
                            Text(
                              'On your Door Step',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SizedBox(
                            width: 10.0,
                          ),
                        ),
                        Container(
                            height: 100.0,
                            width: 100.0,
                            child:
                                Image.asset("lib/assets/images/delivery.png")),
                      ],
                    ),
                  )),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 0.0),
                  child: Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          prefixIcon: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  // boxShadow: BoxShadow.lerpList(1.0, 0.2, t)
                                  ),
                              height: 20.0,
                              width: 20.0,
                              child: Image.asset(
                                  "lib/assets/images/pak_flag.png")),
                          border: InputBorder.none,
                          hintText: '  +92',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 0.0),
                  child: Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Name',
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 0.0),
                  child: Card(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Address',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    //color: Colors.black87,
                    border: Border.all(
                      color: Colors.black87,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('${widget.pres}'),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "My prescription",
                  style: TextStyle(fontSize: 10.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: FlatButton(
                      color: Colors.lightBlueAccent,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DoctorRiview(
                            doctor: widget.doctor,
                            patName: widget.patName,
                          ),
                        ));
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          width: double.infinity,
                          child: Center(
                              child: Text("Submit",
                                  style: TextStyle(color: Colors.white))))),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
