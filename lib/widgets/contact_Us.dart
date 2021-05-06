import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Contact Us",
          style: TextStyle(color: Colors.white),
        ),

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            // Text("Login", style: TextStyle(
            //   fontSize: 25.0,
            //   fontWeight:FontWeight.w900),),
            //SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                "Assalam o Alaikum,",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "We Love to hear your problems and kind words. Talk to Us. :)",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),
            
            SizedBox(
              height: 5.0,
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Name',
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter phone no',
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
//================ SUBMIT BUTTON            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: FlatButton(

                  //padding: EdgeInsets.symmetric(horizontal:30.0),

                  color: Colors.lightBlueAccent,
                  onPressed: () {},
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30.0),
                      width: double.infinity,
                      child: Center(child: Text("Submit", style: TextStyle(color:Colors.white),)))),
            )
          ],
        ),
      ),
    );
  }
}
