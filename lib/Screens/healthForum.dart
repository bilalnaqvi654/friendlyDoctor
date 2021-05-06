import 'package:flutter/material.dart';

import 'forum_card.dart';
import 'mySearch.dart';

class HealthForum extends StatefulWidget {

  @override
  _HealthForumState createState() => _HealthForumState();
}

class _HealthForumState extends State<HealthForum> {
  bool allPost = true;

  bool myPost = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Health Forum", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),

//====================== Search ========
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: MySearch(mySearch: "Search Questions")),
                          InkWell(
                              onTap: () {
                                
                              },
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Text("POST"))),
                        ],
                      ),
                    ),
//======================== MENU ======================

                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Color(0xffebecf0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {

                                    setState(() {
                                   allPost = true;
                                   myPost = false;
                                    });


                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.0,
                                      ),
                                      child: Center(child: Text("All Posts")))),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                    allPost = false;
                                    myPost = true;                                      

                                    });

                                  },
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.0,
                                      ),
                                      child: Center(child: Text("My Posts")))),
                            ),
                          
                          ],
                        ),
                      ),
                    ),
Row(children: [
  Expanded(child: Container(
    height: 2.0,
    color: allPost ? Colors.red : Colors.black,)),

  Expanded(child: Container(
    height: 2.0,
    color:myPost ? Colors.red:Colors.black,)),  
],),

//======================== POST ======================
                    ForumCard(),
                    ForumCard(),
                    ForumCard(),
                    ForumCard(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
