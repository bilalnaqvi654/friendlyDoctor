import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medic/Global.dart';
import 'package:medic/SerachResults/choose_Speciality.dart';

class SearchResult extends StatefulWidget {
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  var searchref = FirebaseFirestore.instance
      .collection('Docotors')
      .where('Hospital Name', isEqualTo: '$searchText')

      //.where('SearchField', isLessThanOrEqualTo: '$searchText')
      // .where('SearchField', isEqualTo: '$searchText')
      // .where('Specialist', isEqualTo: '$searchText')
      // .where('Hospital Name', isEqualTo: '$searchText')
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Choose Speciality", style: TextStyle(color: Colors.white)),

        // actions: [
        //     IconButton(icon: Icon(Icons.notifications,
        //     color:Colors.white), onPressed: null)
        // ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: searchref,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          return ListView.builder(
            itemCount: snapshot.data.docs.length,
            itemBuilder: (context, int index) {
              return ChooseSpeciality(snapshot: snapshot.data, index: index);
            },
          );
        },
      ),
    );
  }
}
