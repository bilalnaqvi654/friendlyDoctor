import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AreYouDoctor extends StatefulWidget {
  @override
  _AreYouDoctorState createState() => _AreYouDoctorState();
}

class _AreYouDoctorState extends State<AreYouDoctor> {
  TextEditingController textEditingControllerName;
  TextEditingController textEditingControllerEmail;
  TextEditingController textEditingControllerPhone;
  TextEditingController textEditingControllerCity;
  TextEditingController textEditingControllerSpeciality;
  TextEditingController textEditingControllerPMDC;
  TextEditingController textEditingControllerMessage;

  void addData() async {
    print("Done");
  }

  final bool value = false;
  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Are You Doctor?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "Let us know if you want to display your information as doctor or want us to edit it. We will be happy to help.",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
//================ Enter Your Name
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerName,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
//================ Enter email: abc@xyz.com
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerEmail,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter email: abc@xyz.com',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
//================ Enter email: abc@xyz.com
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerPhone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter phone no*',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
//================ Enter City
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerCity,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'City*',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
//================ Enter Speciality
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerSpeciality,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Speciality',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
//================ Enter PMDC
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerPMDC,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'PMDC',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),

//================ Enter message
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    controller: textEditingControllerMessage,

                    //minLines: 1,
                    maxLength: 8,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter message',
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

// //================ Radio Button
//       Container(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
//               child: Card(
//                 child: Container(
//                   padding:
//             EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
//                   child: Column(
//                     children: [
//            Text('''Do you want to grow your practice? (more patient leads)'''),
//              // Text("Yes"),
//       SizedBox(
//               height: 10.0,
//       ),

//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Radio(
//               value: 0,
//               groupValue: _groupValue,
//               onChanged: (value){
//                 setState(() {
//                   value = !value;
//                 });
//               },
//               //title: Text("Yes"),
//             ),
// Text("Yes"),
//       SizedBox(
//         width: 20.0,
//       ),

//           Radio(
//               value: 1,
//               groupValue: 1,
//               //title: Text("No"),
//               onChanged: (value){
//                 setState(() {
//                   value = !value;
//                 });

//               },

//             ),
//  Text("No"),

//         ],
//       ),

//                     ],
//                   )
//                 ),
//               ),
//       ),

//       SizedBox(
//           height: 20.0,
//       ),

// //================ Radio Button
//       Container(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
//               child: Card(
//                 child: Container(
//                   padding:
//             EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
//                   child: Column(
//                     children: [
//            Text('''Do you want to manage practice? (scheduling, EMR, reminder, data, patient record?)'''),
//              // Text("Yes"),
//       SizedBox(
//               height: 10.0,
//       ),

//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Radio(
//               value: value,
//               groupValue: _groupValue,
//               onChanged: (value){
//                 setState(() {
//                   value = !value;
//                 });
//               },
//               //title: Text("Yes"),
//             ),
// Text("Yes"),
//       SizedBox(
//         width: 20.0,
//       ),

//           Radio(
//               value: value,
//               groupValue: 1,
//               //title: Text("No"),
//               onChanged: (value){
//                 setState(() {
//                   value = !value;
//                 });

//               },

//             ),
//  Text("No"),

//         ],
//       ),

//                     ],
//                   )
//                 ),
//               ),
//       ),
            SizedBox(
              height: 5.0,
            ),

//================ SUBMIT BUTTON
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FlatButton(

                  //padding: EdgeInsets.symmetric(horizontal:30.0),

                  color: Colors.greenAccent,
                  onPressed: () {
                    addData();
                    print("abc");
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30.0),
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      )))),
            )
          ],
        ),
      ),
    );
  }
}
