import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/screens/main_screen.dart';

import 'homescreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: MainScreen(),
    );
  }

}