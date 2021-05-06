import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'shareModel.dart';

class MyShare extends StatelessWidget {
  List<ShareModel> shareModel = [
    ShareModel(name: "Download Friendly Doctor Android App:", description: "https://play.google.Friendlydoctor.com/"),
    ShareModel(name: "Download Friendly Doctor iOS App:", description: "https://s.apple.Friendlydoctor.com/"),
    ShareModel(name: "Friendly doctor Website Link:", description: "https://www.Friendlydoctor.com/"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Share...",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
        body: Column(
          children: shareModel.map((ShareModel shareModel) => Card(
            child: ListTile(
              title: Text(shareModel.name),
              subtitle: Text(shareModel.description),
              onTap: (){
                share(context, shareModel);
              },
            ),)).toList(),
        )
      )
    );
  }

  void share(BuildContext context, ShareModel shareModel){
    final RenderBox box = context.findRenderObject();
    final String text = "${shareModel.name} - ${shareModel.description}";

    Share.share(text, subject: shareModel.description);
  }
}