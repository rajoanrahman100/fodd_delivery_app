import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rating_bar/rating_bar.dart';

class BoughtFoodTwo extends StatefulWidget {
  @override
  _BoughtFoodTwoState createState() => _BoughtFoodTwoState();
}

class _BoughtFoodTwoState extends State<BoughtFoodTwo> {
  var _rating = 5.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(children: <Widget>[
        Container(
          height: 200.0,
          width: 340.0,
          child: Image.asset(
            "image/supper_1.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Container(
            height: 60.0,
            width: 340.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.black12],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 10.0,
          right: 10.0,
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0,top: 8.0),
                    child: Text(
                      "Grilled Chicken",
                      style: GoogleFonts.ubuntu(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: RatingBar.readOnly(
                      initialRating: 4.5,
                      isHalfAllowed: true,
                      halfFilledIcon: Icons.star_half,
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      filledColor: Colors.orangeAccent,
                      emptyColor: Colors.orangeAccent,
                      halfFilledColor: Colors.orangeAccent,
                      size: 18,
                    ),
                  ),
                ],
              ),
              Text("BDT 350",style: GoogleFonts.pTSans(
                  fontSize: 18.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold
              ),)
            ],
          ),
        )
      ]),
    );
  }
}
