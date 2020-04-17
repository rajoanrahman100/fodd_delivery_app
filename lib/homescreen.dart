import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/widgets/food_category.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/bought_food.dart';
import 'widgets/bought_foodtwo.dart';
import 'widgets/home_info_widgets.dart';
import 'widgets/search_fied.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left:20.0,top: 50.0,right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          SizedBox(
            height: 15.0,
          ),
          FoodCategory(),
          SizedBox(
            height: 20.0,
          ),
          SearchField(),

          SizedBox(
            height: 20.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Frequent Bought Food",style: GoogleFonts.ubuntu(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),),
              GestureDetector(
                onTap: (){},
                child: Text("View All",style: GoogleFonts.ubuntu(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent
                ),),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Column(
              children: <Widget>[
                BoughtFood(),
                SizedBox(
                  height: 10.0,
                ),
                BoughtFoodTwo()
              ],
            ),
          )
        ],
      ),
    );
  }
}
