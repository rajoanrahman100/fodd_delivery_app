import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTopInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final _textStyle=GoogleFonts.pTSans(fontSize:32,fontWeight: FontWeight.bold );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("What would",style: _textStyle),
            Text("you like to eat",style: _textStyle)
          ],
        ),
        Icon(Icons.notifications_none,size: 30.0,color: Theme.of(context).primaryColor,)
      ],
    );
  }

}