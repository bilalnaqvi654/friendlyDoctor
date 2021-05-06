import 'package:flutter/material.dart';

class CalendarCard extends StatelessWidget {

  final myIcon;
  final mytitle;
  final myColor;
  final mytitleColor;

  const CalendarCard({Key key, this.myIcon, this.mytitle, this.myColor, this.mytitleColor});
  
  @override
  Widget build(BuildContext context) {
    return Container(
           height: 70,
           //width: 120,
           //width: double.maxFinite,
           decoration: BoxDecoration(
             border: Border.all(
              color: Color(0xFFF05A22),
              style: BorderStyle.solid,
              width: 1.0,
          ),
             color: myColor,
             borderRadius:BorderRadius.circular(10.0),

           ),
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
               children: [
                 Icon(myIcon,color:mytitleColor? Colors.red:Colors.white),
                 SizedBox(width: 5,),
                 Text(mytitle,
       style: TextStyle(
         color:mytitleColor? Colors.red:Colors.white,
         fontWeight:FontWeight.w500,),),
               ],
             ),
           ),
         );
  }
}