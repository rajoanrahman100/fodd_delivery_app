import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCart extends StatelessWidget{


  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCart({this.categoryName, this.imagePath, this.numberOfItems});

  final _textStyle=GoogleFonts.pTSans(fontSize: 15.0,fontWeight: FontWeight.w600);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
        child: Row(
          children: <Widget>[
            Image.asset(imagePath),
            SizedBox(
              width: 20.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(categoryName,style: _textStyle,),
                Text("$numberOfItems kinds"),
              ],
            )
          ],
        ),
      ),
    );
  }

}