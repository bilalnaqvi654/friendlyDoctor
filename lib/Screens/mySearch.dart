import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {

  final mySearch;

  const MySearch({this.mySearch});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child://==================== Search Doctors
 Container(
                  padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 0.0),
                  
                  child: Card(
                   
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10.0,vertical: 3.0),
                      child: 
                      //  TextFormField(
                    // cursorColor: Colors.black,
                    //keyboardType: inputType,
                    // decoration: new InputDecoration(
                        //border: InputBorder.none,
                        // focusedBorder: InputBorder.none,
                        // enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        // disabledBorder: InputBorder.none,
                        // contentPadding:
                // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
            // hintText: "Hint here"
            // ),
  // )              

  TextField(


  decoration: InputDecoration(
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    hintText: mySearch,
  ),

  // new InputDecoration.collapsed(
  //   hintText: 'Search Doctors, specialities, Hospitals'
  // ),
),     

                     
                    ),
                  ),
                ),

    );
  }
}